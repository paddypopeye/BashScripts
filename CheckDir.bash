#! /bin/bash
# Author:
# Date:
# Description:
cd /home
for DIR in *
do
	echo $DIR
	CHK=$(grep -c "/home/$DIR"  /etc/passwd)
	if [ $CHK -ge 1 ]
	then 
	echo $DIR is assigned to a user
	else
	echo "$DIR is NOT assigned to a user"
	fi
done
