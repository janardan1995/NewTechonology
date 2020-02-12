echo wages for a month
# if  calculiting 20 working day
count=0
workDay=20
extra=0

while(($workDay!=0))
do
wage=$(($wage+$((20*8))))
workDay=$(($workDay-1))
done
echo total wages : $wage

