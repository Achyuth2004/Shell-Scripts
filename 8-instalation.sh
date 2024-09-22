#!/bin/bash

# Get the user ID of the current user
userid=$(id -u)

# Check if the user is not root
if [ $userid -ne 0 ]
then
    echo "Please proceed with root access."
    exit 1  # Manually exit if not root
else
    echo "You are super user"
fi

# Correct the dnf command syntax for installing mysql
dnf install mysql -y

# Check if the previous command (installation) was successful
if [ $? -ne 0 ]
then 
   echo "Installation failed."
   exit 1
else  
   echo "Installation completed successfully."
fi
