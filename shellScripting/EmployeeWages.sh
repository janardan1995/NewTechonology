#!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program on Master Branch"
count=0
workDay=20
extra=0

while(($workDay!=0))
do
x=$(($RANDOM%2))
echo $x
if(($x==1))
then
echo how many extra hour that he works
read e
extra=$(($extra+$e))
wage=$(($wage+$(($((20*8))+$(($e*20))))))
count=$(($count+1))
fi
echo $wage
workDay=$(($workDay-1))
done

echo total income : $wage
echo total no of day he present: $count
echo total extra hour that he works :$extra
