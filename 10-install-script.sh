#!/bin/bash


# Checking root user or not

USERID=$(id -u) # (id -u) -> this command will give user id, If user id 0 he is a root user or else not .

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: You must have sudo access to execute this script"
fi

# mysql Package Installition Process

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


# Git Package Installition Process

dnf list installed git 

if [ $? -ne 0 ]
then 
    dnf install git 
    if [ $? -ne 0 ]
    then 
        echo "Installing Git ... Faliure"
        exit 1
    else    
        echo "Installing Git ... SUCCESS"
    fi
else
    echo "Git already Installed ..."