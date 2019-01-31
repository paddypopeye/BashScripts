#! /bin/bash
# Author:
# Date:
# Description:
a=1
for filename in eugene*
do
	mv $filename ${filename%*}.$a
	((a++))
	
done
