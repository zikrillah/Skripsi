#!/bin/bash

kill `ps ax|grep floodlight|grep -v grep|awk '{print $1}'`

#50 controller up

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

java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl11.floodlight > ~/ctrl/ctrl11.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl12.floodlight > ~/ctrl/ctrl12.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl13.floodlight > ~/ctrl/ctrl13.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl14.floodlight > ~/ctrl/ctrl14.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl15.floodlight > ~/ctrl/ctrl15.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl16.floodlight > ~/ctrl/ctrl16.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl17.floodlight > ~/ctrl/ctrl17.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl18.floodlight > ~/ctrl/ctrl18.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl19.floodlight > ~/ctrl/ctrl19.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl20.floodlight > ~/ctrl/ctrl20.log 2>&1 &

java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl21.floodlight > ~/ctrl/ctrl21.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl22.floodlight > ~/ctrl/ctrl22.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl23.floodlight > ~/ctrl/ctrl23.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl24.floodlight > ~/ctrl/ctrl24.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl25.floodlight > ~/ctrl/ctrl25.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl26.floodlight > ~/ctrl/ctrl26.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl27.floodlight > ~/ctrl/ctrl27.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl28.floodlight > ~/ctrl/ctrl28.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl29.floodlight > ~/ctrl/ctrl29.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl30.floodlight > ~/ctrl/ctrl30.log 2>&1 &

java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl31.floodlight > ~/ctrl/ctrl31.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl32.floodlight > ~/ctrl/ctrl32.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl33.floodlight > ~/ctrl/ctrl33.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl34.floodlight > ~/ctrl/ctrl34.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl35.floodlight > ~/ctrl/ctrl35.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl36.floodlight > ~/ctrl/ctrl36.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl37.floodlight > ~/ctrl/ctrl37.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl38.floodlight > ~/ctrl/ctrl38.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl39.floodlight > ~/ctrl/ctrl39.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl40.floodlight > ~/ctrl/ctrl40.log 2>&1 &

java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl41.floodlight > ~/ctrl/ctrl41.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl42.floodlight > ~/ctrl/ctrl42.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl43.floodlight > ~/ctrl/ctrl43.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl44.floodlight > ~/ctrl/ctrl44.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl45.floodlight > ~/ctrl/ctrl45.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl46.floodlight > ~/ctrl/ctrl46.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl47.floodlight > ~/ctrl/ctrl47.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl48.floodlight > ~/ctrl/ctrl48.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl49.floodlight > ~/ctrl/ctrl49.log 2>&1 &
java -jar ~/floodlight-0.90/target/floodlight.jar -cf ~/ctrl/ctrl50.floodlight > ~/ctrl/ctrl50.log 2>&1 &
