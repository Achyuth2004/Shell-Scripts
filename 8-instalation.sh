#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0]
then
    echo "please proceed with root access"
    exit 1
else
    echo "you are super user"
fi
