#!/bin/sh
#====================================================

#VNet1 SEA-ATL

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10000 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 1 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 1 00:00:00:00:00:00:01:00 1 #Vport 1
python ovxctl.py -n createPort 1 00:00:00:00:00:00:0A:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 1 00:a4:23:05:00:00:00:01 1 00:00:00:00:01:01 #h_SEA_1
python ovxctl.py -n connectHost 1 00:a4:23:05:00:00:00:01 2 00:00:00:00:0A:02 #h_ATL_2
#Start network
python ovxctl.py -n startNetwork 1
#====================================================

#VNet2 SFO-NYK

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10002 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 2 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 2 00:00:00:00:00:00:02:00 1 #Vport 1
python ovxctl.py -n createPort 2 00:00:00:00:00:00:08:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 2 00:a4:23:05:00:00:00:01 1 00:00:00:00:02:01 #h_SFO_1
python ovxctl.py -n connectHost 2 00:a4:23:05:00:00:00:01 2 00:00:00:00:08:02 #h_NYK_2
#Start network
python ovxctl.py -n startNetwork 2
#====================================================

#VNet3 LAX-CHI

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10004 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 3 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 3 00:00:00:00:00:00:03:00 1 #Vport 1
python ovxctl.py -n createPort 3 00:00:00:00:00:00:06:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 3 00:a4:23:05:00:00:00:01 1 00:00:00:00:03:01 #h_LAX_1
python ovxctl.py -n connectHost 3 00:a4:23:05:00:00:00:01 2 00:00:00:00:06:02 #h_CHI_2
#Start network
python ovxctl.py -n startNetwork 3
#====================================================

#VNet4 CHO-HUS

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10006 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 4 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 4 00:00:00:00:00:00:05:00 1 #Vport 1
python ovxctl.py -n createPort 4 00:00:00:00:00:00:0B:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 4 00:a4:23:05:00:00:00:01 1 00:00:00:00:05:01 #h_CHO_1
python ovxctl.py -n connectHost 4 00:a4:23:05:00:00:00:01 2 00:00:00:00:0B:02 #h_HUS_2
#Start network
python ovxctl.py -n startNetwork 4
#====================================================

#VNet5 DAL-BST

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10008 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 5 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 5 00:00:00:00:00:00:04:00 1 #Vport 1
python ovxctl.py -n createPort 5 00:00:00:00:00:00:07:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 5 00:a4:23:05:00:00:00:01 1 00:00:00:00:04:01 #h_DAL_1
python ovxctl.py -n connectHost 5 00:a4:23:05:00:00:00:01 2 00:00:00:00:07:02 #h_BST_2
#Start network
python ovxctl.py -n startNetwork 5
#====================================================

#VNet6 WDC-SFO

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10010 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 6 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 6 00:00:00:00:00:00:09:00 1 #Vport 1
python ovxctl.py -n createPort 6 00:00:00:00:00:00:02:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 6 00:a4:23:05:00:00:00:01 1 00:00:00:00:09:01 #h_WDC_1
python ovxctl.py -n connectHost 6 00:a4:23:05:00:00:00:01 2 00:00:00:00:02:02 #h_SFO_2
#Start network
python ovxctl.py -n startNetwork 6
#====================================================

#VNet7 NYK-SEA

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10012 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 7 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 7 00:00:00:00:00:00:08:00 1 #Vport 1
python ovxctl.py -n createPort 7 00:00:00:00:00:00:01:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 7 00:a4:23:05:00:00:00:01 1 00:00:00:00:08:01 #h_NYK_1
python ovxctl.py -n connectHost 7 00:a4:23:05:00:00:00:01 2 00:00:00:00:01:02 #h_SEA_2
#Start network
python ovxctl.py -n startNetwork 7
#====================================================

#VNet8 ATL-CHO

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10014 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 8 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 8 00:00:00:00:00:00:0A:00 1 #Vport 1
python ovxctl.py -n createPort 8 00:00:00:00:00:00:05:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 8 00:a4:23:05:00:00:00:01 1 00:00:00:00:0A:01 #h_ATL_1
python ovxctl.py -n connectHost 8 00:a4:23:05:00:00:00:01 2 00:00:00:00:05:02 #h_CHO_2
#Start network
python ovxctl.py -n startNetwork 8
#====================================================

#VNet9 BST-WDC

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10016 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 9 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 9 00:00:00:00:00:00:07:00 1 #Vport 1
python ovxctl.py -n createPort 9 00:00:00:00:00:00:09:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 9 00:a4:23:05:00:00:00:01 1 00:00:00:00:07:01 #h_BST_1
python ovxctl.py -n connectHost 9 00:a4:23:05:00:00:00:01 2 00:00:00:00:09:02 #h_WDC_2
#Start network
python ovxctl.py -n startNetwork 9
#====================================================

#VNet10 CHI-LAX

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10018 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 10 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 10 00:00:00:00:00:00:06:00 1 #Vport 1
python ovxctl.py -n createPort 10 00:00:00:00:00:00:03:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 10 00:a4:23:05:00:00:00:01 1 00:00:00:00:06:01 #h_CHI_1
python ovxctl.py -n connectHost 10 00:a4:23:05:00:00:00:01 2 00:00:00:00:03:02 #h_LAX_2
#Start network
python ovxctl.py -n startNetwork 10
