#! /bin/bash
# Author: Eugene Sleator
# Date: today
# Description: Will delete a record from the DB file
clear
echo Please enter a hostname or IP address
read hostip
echo

grep -q $hostip /home/eugene/BashScripts/DB
	if [ $? -eq 0 ]
	then 
	echo
	sed -i '/'$hostip'/d' /home/eugene/BashScripts/DB
	echo $hostip has been deleted from the DB
	else
	echo Record does not exist
	fi
