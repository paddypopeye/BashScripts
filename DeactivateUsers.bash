#! /bin/bash
# Author:
# Date:
# Description:
#

a=`lastlog | tail -n+2 | grep "test" | awk '{print $1}'`
echo $a
for i in $a
do
	echo $i
	sudo usermod -L $i
done
