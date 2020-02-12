#!/bin/bash/ -x
x=$(($RANDOM%2))
echo $x
if(($x==0))
then 
echo employ is present
else
echo employee is absent
fi
