#!/bin/bash/ -x
echo "welcome to Employwages program"
totalworkHour()
{
if(($1!=0))
then
hour=$(($hour+$1))
return $hour
else
echo  $hour
fi
}
echo "Welcome to Employee Wage Computation Program"

# if  calculiting 20 working day and total hour that employee works less then 100
count=1
workDay=20
hour=0
while [ $workDay != 0 ] && [ $hour -le 100 ]
do
x=$(($RANDOM%2))
echo $x
if(($x==0))
then
echo employ is present

#if he present then he works for 8 hour per hour he earns 20 rupees
echo for full time press 1
echo for part time press 2
read y

case $y in
1) echo "he wanna work full time"
        FullTimewage=$(($FullTimewage+$((20*8))))
;;

#if he wanna do part time work
#assuming that part time hour is 4 hour as full time is 8
2) echo "he wanna work part time for 4 hours per day"
       wage=$(($wage+$((20*4))))
       PartTimewage=$((20*4))
       DailyWage=$(($DailyWage+1))
       echo $PartTimewage  >> test.txt
       totalworkHour 8

;;
*) echo "error"
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


