#! /bin/bash
# Author:
# Date:
# Description

servers="server1
server2
server3
server4"

for server in $servers
do
	scp somefile $i:/pathToDest
done
