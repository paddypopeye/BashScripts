#! /bin/bash
# Author:
# Date:
# Description:


FILES="/etc/passwd
/etc/group
/etc/shadow
/etc/nsswitch.conf
/etc/ssh/sshd_config
/etc/fake"


echo
for file in $FILES
do
	if [ ! -e $file ]
	then
	echo $file does not exist
	echo
	fi
done
