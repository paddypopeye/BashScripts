#! /bin/bash
# Author: Eugene Sleator
# Date: today
# Description: Add or delete a record from DB file based on user input

clear

echo
echo Please select one of the following choices
echo

echo 'a = Add a record to the DB file'
echo 'd = Delete a record from the Db file'
echo 

read choice

case $choice in 
a) /home/eugene/BashScripts/add-record.bash;;
d) /home/eugene/BashScripts/del-record.bash;;
*) echo Invalid choice choose \'a\' or \'d\'... bye!
esac
