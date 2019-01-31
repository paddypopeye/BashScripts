#! /bin/bash
# Author:
# Date:
# Description:
#

total=`ls -l eugene* | wc -l`
echo It will take $total seconds to assing the permissions
for i in eugene.*
do
	echo Assigning Permissions to $i
	chmod a+wx $i
	sleep 1

done
