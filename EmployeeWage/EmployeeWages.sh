#!/bin/bash/ -x
echo "welcome to Employwages program"
x=$(($RANDOM%2))
echo "Welcome to Employee Wage Computation Program"

# if  calculiting 20 working day and total hour that employee works less then 100
count=1
workDay=20
extra=0
while(($workDay!=0))
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
2) echo "if he wanna do part time"
      PartTimeIncome=$(($PartTimeIncome+$((4 * 20))))
;;
*) echo "error"
esac
else
echo he is absent
fi
workDay=$(($workDay-1))
done
echo full time wage :$FullTimewage
echo PartTimewage :$PartTimeIncome
