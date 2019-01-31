#! /bin/bash
# Author: Eugenen Sleator
# Date: today
# Description: Will add a record to the DB file

echo Please enter the hostname?
read host
echo
	grep -q $host /home/eugene/BashScripts/DB
	if [ $? -eq 0 ]
	then
	echo ERROR ---- Host $host already exists
	echo
	exit 0
	fi

echo Please enter an IP address?
read ip
echo

	grep -q $ip /home/eugene/BashScripts/DB
	if [ $? -eq 0 ]
	then
	echo ERROR --- $ip already exists in the DB
	echo
	exit 0
	fi
echo Please enter a description?
read desc
echo

echo $host $ip $desc >> /home/eugene/BashScripts/DB
echo The provided record has been added
echo

