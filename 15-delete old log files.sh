#!/bin/bash

set -e

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE=/tmp/app-logs

if [ -d $SOURCE ]
then 
    echo "$G The source file exists:$SOURCE $N"
else
    echo "$R Thse source file not exists:$SOURCE $N"
    mkdir /tmp/app-logs
    exit 1
fi