#!/bin/bash/ -x
echo "welcome to Employwages program"
x=$(($RANDOM%2))
if(($x==0))
then
echo employ is present
else
echo employee is absent
fi
