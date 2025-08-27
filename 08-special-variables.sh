#!/bin/bash

echo "All variables passed : $@"
echo "Number of Variables : $#"
echo "Script name : $0"
echo "Present Working Directory : $PWD"
echo "Home Directory of current user : $HOME"
echo "Which user is running the script : $USER"
echo "process id of current script : $$"
sleep 10 &
echo "process id of last command in background $!"