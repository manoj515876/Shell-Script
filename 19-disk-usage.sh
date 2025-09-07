#!/bin/bash 

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects will monitor for 70

while read -r line 
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}')
    echo $USAGE
done <<< $DISK_USAGE