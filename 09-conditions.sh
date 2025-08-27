#!/bin/bash 

NUMBER=$1

# -gt, -lt, -eq, -ne, -ge, -le

if [ $NUMBER -gt 100 ]
then 
    echo "Number is greater than 100"
else 
    echo "Number is less than or equal to 100"
fi