#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "Please proceed with root access."
    exit 1  #manually exit if error comes
else
    echo "you are super user"
fi

dnf mysql install -y

if [ $? -ne 0 ]
then 
   echo "Installation failure"
   exit 1
else  
   echo "Installation completed"
fi