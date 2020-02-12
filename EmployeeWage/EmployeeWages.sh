#!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program"
x=$(($RANDOM%2))
echo $x

if(($x==0))
then
echo for full time press 1
echo for part time press 2
read y
case $y in

1) echo he wanna work full time
wage=$((20*8))
echo his full time wages is : $wage
;;

2) echo he wanna work part time
wage=$((20*4))
echo his part time wages is : $wage
;;

*) echo invalide input
esac
echo just checking
fi
#testcase

