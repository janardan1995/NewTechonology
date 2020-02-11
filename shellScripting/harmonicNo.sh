#!/bin/bash -x
echo enter the no of 
read  no
a=0
sum=0
for((i=1;i<=no;i++))
do

a=$(echo "$a" "$i" |awk '{print $1+(1/$2) }')

echo $a

echo ...........
done
echo Harmonic upto $n number is : $a
