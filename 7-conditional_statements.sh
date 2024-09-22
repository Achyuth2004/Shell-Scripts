#!/bin/bash

num=$1

if [ "$num" -gt 10 ]
then
   echo "Given number $num is greater than 10"
else 
   echo "Given number $num is less than or equal to 10"
fi


#-gt,-lt,-eq,-ge,-le