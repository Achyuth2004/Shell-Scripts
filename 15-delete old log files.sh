#!/bin/bash

set -e

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE=/tmp/app-logs

if [ -d $SOURCE ]
then 
    echo -e "$G The source file exists:$SOURCE $N"
else
    echo -e "$R Thse source file not exists:$SOURCE $N"
    mkdir /tmp/app-logs
    exit 1
fi

FILES=$(find $SOURCE -name "*.log" -mtime +14)  #to delete .log files more than 2weeks

echo"Files to delete are :$FILES"