#! /bin/bash
# Author: Eugene Sleator
# Date: today
# Description:

echo "Please provide a username"
read u
echo
sudo grep -q $u /etc/passwd
	if [ $? -eq 0 ]
	then
	echo ERROR -- User $u already exists
	echo Please choose a different username
	echo 
	exit 0
	fi

echo "Please provide a description"
read desc
echo

echo "Do you want to provide a user ID (y/n) ?"
read id
echo
	
	if [ $id == y ]
	then
	echo "Please enter a UID."
	read uid
	echo
	sudo grep -q $uid /etc/passwd
	if [ $? -eq 0 ]
	then
	echo ERROR -- UID $uid already exists
	echo Please choose a different UID
	echo 
	exit 0
	fi
	useradd $u -c "$desc" -u $uid
	echo
	echo $u account has been created with UID $uid

	elif [ $id == n ]
	then
	echo A UID will be assigned
	useradd $u -c "$desc"
	fi
