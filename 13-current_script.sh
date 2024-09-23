#!/bin/bash

COURSE="DEVOPS FROM CURRENT SCRIPT"

echo "Before calling another script:$COURSE"
echo "Process id for current script:$$"

./14-other_script.sh

echo "After calling another script:$COURSE"