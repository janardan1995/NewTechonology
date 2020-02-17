#!/bin/bash/ -x

#by using this function we can we can know the total hour
totalworkHour()
{
if(($1!=0))
then
hour=$(($hour+$1))
return $hour
else
echo "total hours employee work in that month: $hour"
fi
}


echo "Welcome to Employee Wage Computation Program"
echo "store the employee details" >> test.txt
count=0
# if  calculiting 20 working day and total hour that employee works less then 100
count=1
workDay=20
DailyWage=0
hour=0

#while loop is used such that total working day should less then 20 days and total working hour should less then 100 hours
while [ $workDay != 0 ] && [ $hour -le 100 ]
do

#here random function is used for randomly choose absent and present
x=$(($RANDOM%2))
echo $x
if(($x==1))
then

#here user can choose while emploee working in part time or fulltime work
#for part time employee can work for 7 hour
#for full time employee should work for 10 hour

echo "for full time press 1"
echo "for part time press 2"
read y
case $y in
1) echo "he wanna work full time"
        wage=$(($wage+$((20*10))))
	FullTimewage=$((20*10))
        DailyWage=$(($DailyWage+1))
        echo Day $DailyWage : wage is : $FullTimewage  >> test.txt
        totalworkHour 4
	totalhour=$?
;;

2) echo "he wanna work part time for 4 hours per day"
       wage=$(($wage+$((20*7))))
       PartTimewage=$((20*7))
       DailyWage=$(($DailyWage+1))
       echo "Day $DailyWage : wage is : $PartTimewage" >> test.txt 
       totalworkHour 8
	totalhour $?
;;

*) echo invalid input
esac
else
 echo he is absent
  DailyWage=$(($DailyWage+1))
  echo Day $DailyWage : wage is : 0   >> test.txt
fi
 echo $count
 wage=$(($wage+$((20*8))))
 workDay=$(($workDay-1))
 count=$(($count+1))
 done

 echo total wages is $wage >> test.txt
echo total working hour $totalhour
echo >> test.txt
