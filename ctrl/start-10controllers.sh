#!/bin/bash

kill `ps ax|grep floodlight|grep -v grep|awk '{print $1}'`

#10 controller up

java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl1.floodlight > ~/ctrl/ctrl1.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl2.floodlight > ~/ctrl/ctrl2.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl3.floodlight > ~/ctrl/ctrl3.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl4.floodlight > ~/ctrl/ctrl4.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl5.floodlight > ~/ctrl/ctrl5.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl6.floodlight > ~/ctrl/ctrl6.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl7.floodlight > ~/ctrl/ctrl7.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl8.floodlight > ~/ctrl/ctrl8.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl9.floodlight > ~/ctrl/ctrl9.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl10.floodlight > ~/ctrl/ctrl10.log 2>&1 &

