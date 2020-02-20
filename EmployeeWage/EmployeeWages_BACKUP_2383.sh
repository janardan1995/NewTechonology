#!/bin/bash/ -x
echo "welcome to Employwages program"
x=$(($RANDOM%2))
if(($x==0))
then
echo employ is present
else
echo employee is absent
fi
#if he present then he works for 8 hour per hour he earns 20 rupees
wage=$((20*8))
echo $wage
<<<<<<< HEAD

=======
#if he wanna do part time work
#assuming that part time hour is 4 hour as full time is 8

echo if he wanna do part time
PartTimeIncome=$((4 * 20))
echo his part time inome is : $PartTimeIncome
>>>>>>> uc3
