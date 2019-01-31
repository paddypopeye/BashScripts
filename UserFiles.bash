#! /bin/bash
# Author:
# Date:
# Description:
echo How many files do you wish to create
read t
echo
echo Provide the beginning of the file name..
read f

for i in $(seq 1 $t)

do
	touch $f.$i

done
