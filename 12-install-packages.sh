#!/bin/bash

userid=$(id -u)
if ( $userid -ne 0 )
then 
   echo "please select with root access"
   exit 1
else
   echo "you are super user"
fi

for i in $@
do
   echo "installing packages-->$i"
done