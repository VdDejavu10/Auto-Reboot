#!/bin/bash

Internet=8.8.8.8
Lan=192.168.0.1
DATE=$(date '+%d/%m/%Y %H:%M:%S')

if [[ "$(ping -c 10 $Internet | grep -oP '\d+(?=% packet loss)')" == 100 ]]; then
        if [[ "$(ping -c 10 $Lan | grep -oP '\d+(?=% packet loss)')" == 100 ]]; then
                echo "$DATE Internet: DOWN, Lan: DOWN";
                echo "$DATE Reboot Now";
                /sbin/reboot
        else
            echo "$DATE Internet: DOWN, Lan: OK";
        fi
exit 1
else
  echo "$DATE Internet: OK, Lan: OK";
  exit 0
fi
