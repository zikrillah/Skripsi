#!/bin/bash

kill `ps ax|grep floodlight|grep -v grep|awk '{print $1}'`

java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl1.floodlight > ~/ctrl/ctrl1.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl2.floodlight > ~/ctrl/ctrl2.log 2>&1 &
#java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl3.floodlight > ~/ctrl/ctrl3.log 2>&1 &
#java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl4.floodlight > ~/ctrl/ctrl4.log 2>&1 &
#java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl5.floodlight > ~/ctrl/ctrl5.log 2>&1 &

