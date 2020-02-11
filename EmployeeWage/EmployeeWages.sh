#!/bin/bash/ -x
echo Welcome to Employee Wage Computation Program on Master Branch
x=$(($RANDOM%2))
echo $x
if(($x==0))
then 
echo employ is present
else
echo employee is absent
fi
