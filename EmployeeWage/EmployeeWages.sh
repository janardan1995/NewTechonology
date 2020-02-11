#!/bin/bash/ -x
echo Welcome to Employee Wage Computation Program on Master Branch
x=$(($RANDOM%2))
echo $x
case $x in
1) echo how many extra hour that he works
read e
extra=$(($extra+$e))
wage=$(($wage+$(($((20*8))+$(($e*20))))))
count=$(($count+1))
;;
0) echo  absent
;;
esac
echo $wage
echo $extra
