#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1
fi

dnf list installed mysql 

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing MYSQL .... Failure"
        exit 1
    else 
        echo "Instaling MYSQL .... SUCCESS"
    fi
else 
    echo "MySQL already Installed ..."


dnf list installed git

if [ $? -ne 0 ]
then 
    dnf install git -y 
    if [ $? -ne 0 ]
    then 
        echo "Installing Git ... Failure"
        exit 1;
    else 
        echo "Installing Git ... SUCCESS"
    fi 
else 
    echo "Git already Installed ..."
fi


