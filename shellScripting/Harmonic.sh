echo enter a no
read x
no=$x;
i=0
while(($x>=0))
do
sum=$[2**$i]
echo 2^$i=$sum
i=$(($i+1))
x=$(($x-1))
echo ...................................
done
