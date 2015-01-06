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
#====================================================

#VNet11 HUS-DAl

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10020 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 11 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 11 00:00:00:00:00:00:0B:00 1 #Vport 1
python ovxctl.py -n createPort 11 00:00:00:00:00:00:04:00 2 #Vport 2
#Connect host
python ovxctl.py -n connectHost 11 00:a4:23:05:00:00:00:01 1 00:00:00:00:0B:01 #h_HUS_1
python ovxctl.py -n connectHost 11 00:a4:23:05:00:00:00:01 2 00:00:00:00:04:02 #h_DAL_2
#Start network
python ovxctl.py -n startNetwork 11
#====================================================

#VNet12 SEA-DAL

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10022 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 12 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 12 00:00:00:00:00:00:01:00 3 #Vport 1
python ovxctl.py -n createPort 12 00:00:00:00:00:00:04:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 12 00:a4:23:05:00:00:00:01 1 00:00:00:00:01:03 #h_SEA_3
python ovxctl.py -n connectHost 12 00:a4:23:05:00:00:00:01 2 00:00:00:00:04:04 #h_DAL_4
#Start network
python ovxctl.py -n startNetwork 12
#====================================================

#VNet13 SFO-CHI

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10024 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 13 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 13 00:00:00:00:00:00:02:00 3 #Vport 1
python ovxctl.py -n createPort 13 00:00:00:00:00:00:06:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 13 00:a4:23:05:00:00:00:01 1 00:00:00:00:02:03 #h_SFO_3
python ovxctl.py -n connectHost 13 00:a4:23:05:00:00:00:01 2 00:00:00:00:06:04 #h_CHI_4
#Start network
python ovxctl.py -n startNetwork 13
#====================================================

#VNet14 LAX-HUS

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10026 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 14 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 14 00:00:00:00:00:00:03:00 3 #Vport 1
python ovxctl.py -n createPort 14 00:00:00:00:00:00:0B:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 14 00:a4:23:05:00:00:00:01 1 00:00:00:00:03:03 #h_LAX_3
python ovxctl.py -n connectHost 14 00:a4:23:05:00:00:00:01 2 00:00:00:00:0B:04 #h_HUS_4
#Start network
python ovxctl.py -n startNetwork 14
#====================================================

#VNet15 CHO-BST

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10028 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 15 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 15 00:00:00:00:00:00:05:00 3 #Vport 1
python ovxctl.py -n createPort 15 00:00:00:00:00:00:07:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 15 00:a4:23:05:00:00:00:01 1 00:00:00:00:05:03 #h_CHO_3
python ovxctl.py -n connectHost 15 00:a4:23:05:00:00:00:01 2 00:00:00:00:07:04 #h_BST_4
#Start network
python ovxctl.py -n startNetwork 15
#====================================================

#VNet16 DAL-NYK

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10030 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 16 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 16 00:00:00:00:00:00:04:00 3 #Vport 1
python ovxctl.py -n createPort 16 00:00:00:00:00:00:08:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 16 00:a4:23:05:00:00:00:01 1 00:00:00:00:04:03 #h_DAL_3
python ovxctl.py -n connectHost 16 00:a4:23:05:00:00:00:01 2 00:00:00:00:08:04 #h_NYK_4
#Start network
python ovxctl.py -n startNetwork 16
#====================================================

#VNet17 WDC-ATL

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10032 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 17 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 17 00:00:00:00:00:00:09:00 3 #Vport 1
python ovxctl.py -n createPort 17 00:00:00:00:00:00:0A:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 17 00:a4:23:05:00:00:00:01 1 00:00:00:00:09:03 #h_WDC_3
python ovxctl.py -n connectHost 17 00:a4:23:05:00:00:00:01 2 00:00:00:00:0A:04 #h_ATL_4
#Start network
python ovxctl.py -n startNetwork 17
#====================================================

#VNet18 NYK-SEA

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10034 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 18 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 18 00:00:00:00:00:00:08:00 3 #Vport 1
python ovxctl.py -n createPort 18 00:00:00:00:00:00:01:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 18 00:a4:23:05:00:00:00:01 1 00:00:00:00:08:03 #h_NYK_3
python ovxctl.py -n connectHost 18 00:a4:23:05:00:00:00:01 2 00:00:00:00:01:04 #h_SEA_4
#Start network
python ovxctl.py -n startNetwork 18
#====================================================

#VNet19 ATL-SFO

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10036 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 19 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 19 00:00:00:00:00:00:0A:00 3 #Vport 1
python ovxctl.py -n createPort 19 00:00:00:00:00:00:02:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 19 00:a4:23:05:00:00:00:01 1 00:00:00:00:0A:03 #h_SFO_3
python ovxctl.py -n connectHost 19 00:a4:23:05:00:00:00:01 2 00:00:00:00:02:04 #h_CHI_4
#Start network
python ovxctl.py -n startNetwork 19
#====================================================

#VNet20 BST-CHO

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10038 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 20 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 20 00:00:00:00:00:00:07:00 3 #Vport 1
python ovxctl.py -n createPort 20 00:00:00:00:00:00:05:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 20 00:a4:23:05:00:00:00:01 1 00:00:00:00:07:03 #h_BST_3
python ovxctl.py -n connectHost 20 00:a4:23:05:00:00:00:01 2 00:00:00:00:05:04 #h_CHO_4
#Start network
python ovxctl.py -n startNetwork 20
#====================================================

#VNet21 CHI-LAX

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10040 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 21 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 21 00:00:00:00:00:00:06:00 3 #Vport 1
python ovxctl.py -n createPort 21 00:00:00:00:00:00:03:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 21 00:a4:23:05:00:00:00:01 1 00:00:00:00:06:03 #h_CHI_3
python ovxctl.py -n connectHost 21 00:a4:23:05:00:00:00:01 2 00:00:00:00:03:04 #h_LAX_4
#Start network
python ovxctl.py -n startNetwork 21
#====================================================

#VNet22 HUS-WDC

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10042 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 22 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 22 00:00:00:00:00:00:0B:00 3 #Vport 1
python ovxctl.py -n createPort 22 00:00:00:00:00:00:09:00 4 #Vport 2
#Connect host
python ovxctl.py -n connectHost 22 00:a4:23:05:00:00:00:01 1 00:00:00:00:0B:03 #h_HUS_3
python ovxctl.py -n connectHost 22 00:a4:23:05:00:00:00:01 2 00:00:00:00:09:04 #h_WDC_4
#Start network
python ovxctl.py -n startNetwork 22
#====================================================

#VNet23 HUS-CHO

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10044 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 23 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 23 00:00:00:00:00:00:0B:00 5 #Vport 1
python ovxctl.py -n createPort 23 00:00:00:00:00:00:05:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 23 00:a4:23:05:00:00:00:01 1 00:00:00:00:0B:05 #h_HUS_5
python ovxctl.py -n connectHost 23 00:a4:23:05:00:00:00:01 2 00:00:00:00:05:06 #h_CHO_6
#Start network
python ovxctl.py -n startNetwork 23
#====================================================

#VNet24 CHI-WDC

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10046 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 24 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 24 00:00:00:00:00:00:06:00 5 #Vport 1
python ovxctl.py -n createPort 24 00:00:00:00:00:00:09:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 24 00:a4:23:05:00:00:00:01 1 00:00:00:00:06:05 #h_CHI_5
python ovxctl.py -n connectHost 24 00:a4:23:05:00:00:00:01 2 00:00:00:00:09:06 #h_WDC_6
#Start network
python ovxctl.py -n startNetwork 24
#====================================================

#VNet25 BST-LAX

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10048 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 25 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 25 00:00:00:00:00:00:07:00 5 #Vport 1
python ovxctl.py -n createPort 25 00:00:00:00:00:00:03:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 25 00:a4:23:05:00:00:00:01 1 00:00:00:00:07:05 #h_BST_5
python ovxctl.py -n connectHost 25 00:a4:23:05:00:00:00:01 2 00:00:00:00:03:06 #h_LAX_6
#Start network
python ovxctl.py -n startNetwork 25
#====================================================

#VNet26 ATL-DAL

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10050 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 26 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 26 00:00:00:00:00:00:0A:00 5 #Vport 1
python ovxctl.py -n createPort 26 00:00:00:00:00:00:04:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 26 00:a4:23:05:00:00:00:01 1 00:00:00:00:0A:05 #h_ATL_5
python ovxctl.py -n connectHost 26 00:a4:23:05:00:00:00:01 2 00:00:00:00:04:06 #h_DAL_6
#Start network
python ovxctl.py -n startNetwork 26
#====================================================

#VNet27 NYK-HUS

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10052 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 27 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 27 00:00:00:00:00:00:08:00 5 #Vport 1
python ovxctl.py -n createPort 27 00:00:00:00:00:00:0B:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 27 00:a4:23:05:00:00:00:01 1 00:00:00:00:08:05 #h_NYK_5
python ovxctl.py -n connectHost 27 00:a4:23:05:00:00:00:01 2 00:00:00:00:0B:06 #h_HUS_6
#Start network
python ovxctl.py -n startNetwork 27
#====================================================

#VNet28 WDC-BST

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10054 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 28 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 28 00:00:00:00:00:00:09:00 5 #Vport 1
python ovxctl.py -n createPort 28 00:00:00:00:00:00:07:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 28 00:a4:23:05:00:00:00:01 1 00:00:00:00:09:05 #h_WDC_5
python ovxctl.py -n connectHost 28 00:a4:23:05:00:00:00:01 2 00:00:00:00:07:06 #h_BST_6
#Start network
python ovxctl.py -n startNetwork 28
#====================================================

#VNet29 DAL-CHI

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10056 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 29 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 29 00:00:00:00:00:00:04:00 5 #Vport 1
python ovxctl.py -n createPort 29 00:00:00:00:00:00:06:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 29 00:a4:23:05:00:00:00:01 1 00:00:00:00:04:05 #h_DAL_5
python ovxctl.py -n connectHost 29 00:a4:23:05:00:00:00:01 2 00:00:00:00:06:06 #h_CHI_6
#Start network
python ovxctl.py -n startNetwork 29
#====================================================

#VNet30 CHO-SEA

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10058 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 30 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 30 00:00:00:00:00:00:05:00 5 #Vport 1
python ovxctl.py -n createPort 30 00:00:00:00:00:00:01:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 30 00:a4:23:05:00:00:00:01 1 00:00:00:00:05:05 #h_CHO_5
python ovxctl.py -n connectHost 30 00:a4:23:05:00:00:00:01 2 00:00:00:00:01:06 #h_SEA_6
#Start network
python ovxctl.py -n startNetwork 30
#====================================================

#VNet31 LAX-NYK

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10060 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 31 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 31 00:00:00:00:00:00:03:00 5 #Vport 1
python ovxctl.py -n createPort 31 00:00:00:00:00:00:08:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 31 00:a4:23:05:00:00:00:01 1 00:00:00:00:03:05 #h_LAX_5
python ovxctl.py -n connectHost 31 00:a4:23:05:00:00:00:01 2 00:00:00:00:08:06 #h_NYK_6
#Start network
python ovxctl.py -n startNetwork 31
#====================================================

#VNet32 SFO-ATL

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10062 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 32 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 32 00:00:00:00:00:00:02:00 5 #Vport 1
python ovxctl.py -n createPort 32 00:00:00:00:00:00:0A:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 32 00:a4:23:05:00:00:00:01 1 00:00:00:00:02:05 #h_SFO_5
python ovxctl.py -n connectHost 32 00:a4:23:05:00:00:00:01 2 00:00:00:00:0A:06 #h_ATL_6
#Start network
python ovxctl.py -n startNetwork 32
#====================================================

#VNet33 SEA-SFO

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10064 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 33 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 33 00:00:00:00:00:00:01:00 5 #Vport 1
python ovxctl.py -n createPort 33 00:00:00:00:00:00:02:00 6 #Vport 2
#Connect host
python ovxctl.py -n connectHost 33 00:a4:23:05:00:00:00:01 1 00:00:00:00:01:05 #h_SEA_5
python ovxctl.py -n connectHost 33 00:a4:23:05:00:00:00:01 2 00:00:00:00:02:06 #h_SFO_6
#Start network
python ovxctl.py -n startNetwork 33
#====================================================

#VNet34 LAX-CHI

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10066 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 34 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 34 00:00:00:00:00:00:03:00 7 #Vport 1
python ovxctl.py -n createPort 34 00:00:00:00:00:00:06:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 34 00:a4:23:05:00:00:00:01 1 00:00:00:00:03:07 #h_LAX_7
python ovxctl.py -n connectHost 34 00:a4:23:05:00:00:00:01 2 00:00:00:00:06:08 #h_CHI_8
#Start network
python ovxctl.py -n startNetwork 34
#====================================================

#VNet35 SFO-DAL

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10068 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 35 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 35 00:00:00:00:00:00:02:00 7 #Vport 1
python ovxctl.py -n createPort 35 00:00:00:00:00:00:04:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 35 00:a4:23:05:00:00:00:01 1 00:00:00:00:02:07 #h_SFO_7
python ovxctl.py -n connectHost 35 00:a4:23:05:00:00:00:01 2 00:00:00:00:04:08 #h_DAL_8
#Start network
python ovxctl.py -n startNetwork 35
#====================================================

#VNet36 SEA-NYK

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10070 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 36 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 36 00:00:00:00:00:00:01:00 7 #Vport 1
python ovxctl.py -n createPort 36 00:00:00:00:00:00:08:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 36 00:a4:23:05:00:00:00:01 1 00:00:00:00:01:07 #h_SEA_7
python ovxctl.py -n connectHost 36 00:a4:23:05:00:00:00:01 2 00:00:00:00:08:08 #h_NYK_8
#Start network
python ovxctl.py -n startNetwork 36
#====================================================

#VNet37 CHO-BST

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10072 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 37 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 37 00:00:00:00:00:00:05:00 7 #Vport 1
python ovxctl.py -n createPort 37 00:00:00:00:00:00:07:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 37 00:a4:23:05:00:00:00:01 1 00:00:00:00:05:07 #h_CHO_7
python ovxctl.py -n connectHost 37 00:a4:23:05:00:00:00:01 2 00:00:00:00:07:08 #h_BST_8
#Start network
python ovxctl.py -n startNetwork 37
#====================================================

#VNet38 WDC-HUS

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10074 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 38 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 38 00:00:00:00:00:00:09:00 7 #Vport 1
python ovxctl.py -n createPort 38 00:00:00:00:00:00:0B:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 38 00:a4:23:05:00:00:00:01 1 00:00:00:00:09:07 #h_WDC_7
python ovxctl.py -n connectHost 38 00:a4:23:05:00:00:00:01 2 00:00:00:00:0B:08 #h_HUS_8
#Start network
python ovxctl.py -n startNetwork 38
#====================================================

#VNet39 ATL-WDC

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10076 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 39 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 39 00:00:00:00:00:00:0A:00 7 #Vport 1
python ovxctl.py -n createPort 39 00:00:00:00:00:00:09:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 39 00:a4:23:05:00:00:00:01 1 00:00:00:00:0A:07 #h_ATL_7
python ovxctl.py -n connectHost 39 00:a4:23:05:00:00:00:01 2 00:00:00:00:09:08 #h_WDC_8
#Start network
python ovxctl.py -n startNetwork 39
#====================================================

#VNet40 NYK-LAX

#Create controller
python ovxctl.py -n createNetwork tcp:localhost:10078 10.0.0.0 16
#Create virtual switch
python ovxctl.py -n createSwitch 40 00:00:00:00:00:00:01:00,00:00:00:00:00:00:02:00,00:00:00:00:00:00:03:00,00:00:00:00:00:00:04:00,00:00:00:00:00:00:05:00,00:00:00:00:00:00:06:00,00:00:00:00:00:00:07:00,00:00:00:00:00:00:08:00,00:00:00:00:00:00:09:00,00:00:00:00:00:00:0A:00,00:00:00:00:00:00:0B:00
#Create virtual port
python ovxctl.py -n createPort 40 00:00:00:00:00:00:08:00 7 #Vport 1
python ovxctl.py -n createPort 40 00:00:00:00:00:00:03:00 8 #Vport 2
#Connect host
python ovxctl.py -n connectHost 40 00:a4:23:05:00:00:00:01 1 00:00:00:00:08:07 #h_NYK_7
python ovxctl.py -n connectHost 40 00:a4:23:05:00:00:00:01 2 00:00:00:00:03:08 #h_LAX_8
#Start network
python ovxctl.py -n startNetwork 40
