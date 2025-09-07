#!/bin/bash 

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5 #real projects will monitor for 70
MSG=""

while read -r line 
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    PARTITION=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then 
        MSG+="High Disk usage on partition: $PARTITION Usage is: $USAGE <br> "
    fi
done <<< $DISK_USAGE

echo -e "message : ${MSG}"

echo "${MSG}" | mutt -s "High Disk Usage" 99210041945@klu.ac.in

