#!/bin/bash/ -x
totalworkHour()
{
if(($1!=0))
then
hour=$(($hour+$1))
return $hour
else
echo total hours employee work in that month: $hour
fi
}


echo "Welcome to Employee Wage Computation Program"
count=0
# if  calculiting 20 working day and total hour that employee works less then 100
count=1
workDay=20

hour=0
while [ $workDay != 0 ] && [ $hour -le 100 ]
do
x=$(($RANDOM%2))
DailyWage=0
echo $x
if(($x==0))
then
echo for full time press 1
echo for part time press 2
read y
case $y in
1) echo "he wanna work full time"
        wage=$(($wage+$((20*8))))
	FullTimewage=$((20*8))
        DailyWage=$(($DailyWage+1))
        echo $FullTimewage  >> test.txt
        totalworkHour 4

;;

2) echo "he wanna work part time for 4 hours per day"
       wage=$(($wage+$((20*4))))
       PartTimewage=$((20*4))
       DailyWage=$(($DailyWage+1))
       echo $PartTimewage  >> test.txt 
       totalworkHour 8

;;

*) echo invalide input
esac
else
 echo he is absent
  
  echo 0  >> test.txt 
fi
 echo $count
 wage=$(($wage+$((20*8))))
 workDay=$(($workDay-1))
 count=$(($count+1))
 done
 
 
 totalworkHour 0
 echo total wages is $wage >> test.txt

