#!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program"
count=0
workDay=20
extra=0

while(($workDay!=0))
do
x=$(($RANDOM%2))
echo $x

if(($x==0))
then
echo for full time press 1
echo for part time press 2
read y
case $y in

1) echo "he wanna work full time"
        FullTimewage=$(($FullTimewage+$((20*8))))
;;

2) echo "he wanna work part time for 4 hours per day"
       PartTimewage=$(($PartTimewage+$((20*4))))
;;

*) echo invalide input
esac

else
echo he is absent
fi
workDay=$(($workDay-1))
done

echo full time wage :$FullTimewage
echo PartTimewage :$PartTimewage
