headCount=0
tailCount=0
echo "enter how many times you wanna toss the coin"
read t
toss=$t

while [ $toss -gt 0 ]
do
a=$(($RANDOM%2))
echo "....$a"
if [ $a -eq 1 ]
then
         headCount=$(($headCount+1))
else
         tailCount=$(($tailCount+1))
fi
toss=$(($toss-1))
done

echo ".............................."
echo "tailCount=$tailCount"
echo "headCount=$headCount"
per=100
a=$(($headCount * 100/t))
b=$(($tailCount * 100/t))

echo "percentage of head: $a%  and tail: $b%"
