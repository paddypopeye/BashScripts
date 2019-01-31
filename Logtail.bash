#! /bin/bash
# Author: Eugene Sleator
# Date:
# Descrription: Logs only defined keywords


sudo tail -fn0 /var/log/syslog | while read line

do 
echo $line | egrep -i "refused|invalid|error|file|lost|shut|down
|offline|failed"
	if [ $? -eq 0 ]
	then
	echo $line >> /tmp/filtered-messages
	fi
done
