#!/bin/bash -x
echo quadratic equation

echo enter a
read a
echo enter b
read b
echo enter c
read c
delta=$(($(($b*$b))-$((4*$a*$c))))
echo $delta
if((delta>=0))
then
echo rootos are real
root1=$(echo "$b" "$delta" "$a" | awk '{print (-$1+ sqrt($2))/2*$3}')
root2=$(echo "$b" "$delta" "$a" | awk '{print ( $1+ sqrt($2))/2*$3}')
echo $root1
echo $root2
else
echo roots are imaginary
fi
