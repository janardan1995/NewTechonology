#!/bin/bash/ -x
echo Welcome to Employee Wage Computation Program on Master Branch
x=$(($RANDOM%2))
echo $x
if(($x==0))
then 
echo employ is present
#if he present then he works for 8 hour per 20 rupees
wage=$((20*8))
#if he wanna do extra work
#noted that *hour should have completed
echo how many extra hour that he works
read e
extraIncome=$(($e * 20))
echo his extra inome is : $extraIncome
echo his income $wage
else
echo employee is absent
fi
