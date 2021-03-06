#!/bin/sh
#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10002 10.0.0.0 16

#Create virtual switch
python ovxctl.py -n createSwitch 2 00:00:00:00:00:00:01:00
python ovxctl.py -n createSwitch 2 00:00:00:00:00:00:02:00
python ovxctl.py -n createSwitch 2 00:00:00:00:00:00:03:00

#Create virtual port
python ovxctl.py -n createPort 2 00:00:00:00:00:00:01:00 3
python ovxctl.py -n createPort 2 00:00:00:00:00:00:01:00 11

python ovxctl.py -n createPort 2 00:00:00:00:00:00:02:00 11
python ovxctl.py -n createPort 2 00:00:00:00:00:00:02:00 13

python ovxctl.py -n createPort 2 00:00:00:00:00:00:03:00 11
python ovxctl.py -n createPort 2 00:00:00:00:00:00:03:00 4

#Create virtual link
python ovxctl.py -n connectLink 2 00:a4:23:05:00:00:00:01 2 00:a4:23:05:00:00:00:02 1 spf 1
python ovxctl.py -n connectLink 2 00:a4:23:05:00:00:00:02 2 00:a4:23:05:00:00:00:03 1 spf 1

#Connect host
python ovxctl.py -n connectHost 2 00:a4:23:05:00:00:00:01 1 00:00:00:00:01:03
python ovxctl.py -n connectHost 2 00:a4:23:05:00:00:00:03 2 00:00:00:00:03:04

#Start network
python ovxctl.py -n startNetwork 2
