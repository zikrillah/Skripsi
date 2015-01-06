#!/usr/bin/python

from mininet.net import Mininet
from mininet.topo import Topo
from mininet.log import lg, setLogLevel
from mininet.cli import CLI
from mininet.node import RemoteController

CORES = {
  'SEA': {'dpid': '000000000000010%s'},
  'SFO': {'dpid': '000000000000020%s'},
  'LAX': {'dpid': '000000000000030%s'},
  'DAL': {'dpid': '000000000000040%s'},
  'CHO': {'dpid': '000000000000050%s'},
  'CHI': {'dpid': '000000000000060%s'},
  'BST': {'dpid': '000000000000070%s'},
  'NYK': {'dpid': '000000000000080%s'},
  'WDC': {'dpid': '000000000000090%s'},
  'ATL': {'dpid': '0000000000000a0%s'},
  'HUS': {'dpid': '0000000000000b0%s'},
  }

FANOUT = 4

class I2Topo(Topo):

  def __init__(self, enable_all = True):
    "Create Internet2 topology."

    # Add default members to class.
    super(I2Topo, self).__init__()

    # Add core switches
    self.cores = {}
    for switch in CORES:
      self.cores[switch] = self.addSwitch(switch, dpid=(CORES[switch]['dpid'] % '0'))

    # Add hosts and connect them to their core switch
    for switch in CORES:
      for count in xrange(1, FANOUT + 1):
        # Add hosts
        host = 'h_%s_%s' % (switch, count)
        ip = '10.0.0.%s' % count
        mac = CORES[switch]['dpid'][4:] % count
        h = self.addHost(host, ip=ip, mac=mac)
        # Connect hosts to core switches
        self.addLink(h, self.cores[switch])

    # Connect core switches
    self.addLink(self.cores['SFO'], self.cores['SEA'])
    self.addLink(self.cores['SEA'], self.cores['CHI'])
    self.addLink(self.cores['SFO'], self.cores['CHO'])
    self.addLink(self.cores['SFO'], self.cores['LAX'])
    self.addLink(self.cores['LAX'], self.cores['DAL'])
    self.addLink(self.cores['DAL'], self.cores['HUS'])
    self.addLink(self.cores['DAL'], self.cores['CHO'])
    self.addLink(self.cores['CHO'], self.cores['CHI'])
    self.addLink(self.cores['CHI'], self.cores['BST'])
    self.addLink(self.cores['BST'], self.cores['NYK'])
    self.addLink(self.cores['NYK'], self.cores['WDC'])
    self.addLink(self.cores['WDC'], self.cores['CHO'])
    self.addLink(self.cores['WDC'], self.cores['ATL'])
    self.addLink(self.cores['ATL'], self.cores['HUS'])

if __name__ == '__main__':
   topo = I2Topo()
   net = Mininet(topo, autoSetMacs=True, xterms=False, controller=RemoteController)
   net.addController('c', ip='127.0.0.1')
   print "\nHosts configured with IPs, switches pointing to OpenVirteX at 127.0.0.1 port 6633\n"
   net.start()
   CLI(net)
   net.stop()
