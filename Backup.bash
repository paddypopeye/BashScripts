#! /bin/bash
#  Author:
#  Date:
#  Description: Backup /etc and /var
#

sudo tar cvf /media/eugene/31D3-33E9/Backup2.tar /etc

sudo gzip /media/eugene/31D3-33E9/Backup2.tar

sudo find Backup2.tar -mtime -1 -type f -print &> /dev/null

if [ $? -eq 1 ]
	then 
	echo Backup was created
	echo
	echo Archiving Backup
	else
	echo Backup Failed
fi

