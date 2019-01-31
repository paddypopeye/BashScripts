#! /bin/bash
# Author:Eugene Sleator
# Date: today
# Description: Check disk usage and alert if above 90%

df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $5, $1}'|while read output
do

	usep=$(echo $output | awk '{print $1}' | cut -d'%' -f1 )
	partition=$(echo $output | awk '{print $2}')

	if [ $usep -ge 90 ]
	then
	echo "Running out of Disk space \"$partition ($usep%)\" on $(hostname) as of $(date)"
	fi
done
