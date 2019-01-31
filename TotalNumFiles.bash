#! /bin/bash
# Author: Eugene Sleator
# Date: Today
# Description: Verify the total number of files

a=`ls -l /home/eugene/BashScripts | wc -l`

if [ $a -ge 15 ]

then
echo Yes there are $a files
else
echo Number of files is less than 15

fi
