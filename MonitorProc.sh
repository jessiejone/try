#!/bin/bash
while true
do
 procnum=`ps|grep 'nullThread' | grep -v grep | wc -l
 if [ $procnum -eq 0 ];
 then
 ./nullThread.sh
 fi
 sleep 30
done