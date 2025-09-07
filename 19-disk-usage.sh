#!/bin/bash 

DISK_USAGE=$(echo df -hT | grep xfs)
echo $DISK_USAGE