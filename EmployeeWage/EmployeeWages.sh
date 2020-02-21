#!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program"
echo "Welcome to Employee Wage Computation Program" >> test.txt
count=0
hour=0
# if  calculiting 20 working day and total hour that employee works less then 100
workDay=20
DailyWage=0
TotalHour=0
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
echo "He is present"
echo "for full time press 1"
echo "for part time press 2"
read y
case $y in
1)      echo "he wanna work full time ie 8 hour per day"
        wage=$(($wage+$((20*8))))
	FullTimewage=$((20*8))
        DayCount=$(($DayCount+1))
        echo  $FullTimewage is per day wages for day $DayCount >> test.txt
        TotalHour=$(($TotalHour+8))

;;

2)     echo "he wanna work part time for 4 hours per day"
       wage=$(($wage+$((20*4))))
       PartTimewage=$((20*4))
       DayCount=$(($DayCount+1))
       echo $PartTimewage is per day wages for day $DayCount >> test.txt
       totalworkHour 8
       TotalHour=$(($TotalHour+4))

;;

*) echo invalid input
esac

else
  echo he is absent
  DayCount=$(($DayCount+1))
  echo 0 is per day wages for day $DayCount >> test.txt

fi
 echo $count
 wage=$(($wage+$((20*8))))
 workDay=$(($workDay-1))
 count=$(($count+1))
 done

 echo total wages is $wage >> test.txt
 echo total working hour $TotalHour

echo
