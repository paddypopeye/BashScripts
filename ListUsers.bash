#! /bin/bash
# Author:
# Date:
# Description:

today=`date | awk '{print $1,$2,$3}'`
last |grep "$today" | awk '{print $1}'

