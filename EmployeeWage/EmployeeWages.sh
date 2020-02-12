#!/bin/sh -x
echo wages for a month
# if  calculiting 20 working day
count=1
workDay=20
extra=0
hour=0
while [ $workDay != 0 ] && [ $hour -le 100 ]
do
echo $count
wage=$(($wage+$((20*8))))
workDay=$(($workDay-1))
hour=$(($hour+8))
count=$(($count+1))
done
echo total wages : $wage
echo $hour
echo perfect!!
