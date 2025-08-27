#!/bin/bash 

TIMESTAMP=$(date)
echo "Script excueted at $(TIMESTAMP)"

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Sum of $NUMBER1 and $NUMBER2 is $SUM"
