
#!/bin/bash/ -x
totalworkHour()
{
if(($1!=0))
then
hour=$(($hour+$1))
return $hour
else
echo wow $hour
fi
}

echo "Welcome to Employee Wage Computation Program"
count=0
# if  calculiting 20 working day and total hour that employee works less then 100
count=1
workDay=20
extra=0
hour=0
while [ $workDay != 0 ] && [ $hour -le 100 ]
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
        totalworkHour 4
;;

2) echo "he wanna work part time for 4 hours per day"
       PartTimewage=$(($PartTimewage+$((20*4))))
       totalworkHour 8
;;

*) echo invalide input
esac
else
 echo he is absent
fi
 echo $count
 wage=$(($wage+$((20*8))))
 workDay=$(($workDay-1))
 count=$(($count+1))
 done
 echo full time wage :$FullTimewage
 echo PartTimewage :$PartTimewage
 echo total wages : $wage
 totalworkHour 0

