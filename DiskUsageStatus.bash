#! /bin/bash
# Author: Eugene Sleator
# Date: today
# Description: Displays current disk usage above given threshold(50%)


echo
echo "Below is the Disk space status: "
echo

df -h | awk '0+$5 >= 50 {print}' | awk '{print $6, "is using", $5}'

