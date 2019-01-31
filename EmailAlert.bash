#! /bin/bash
# Author: Eugene Sleator
# Date: today
# Description:

admin="paddypopeye@hotmail.com"

if [ -s /tmp/filtered-messages ]

then
cat /tmp/filtered-messages | sort | uniq | mail -s "Errors Found Syslog" $admin
rm /tmp/filtered-messages
else
echo
fi
