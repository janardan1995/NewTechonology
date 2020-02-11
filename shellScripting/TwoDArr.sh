#!/bin/sh -x
echo enter the rows
read r
echo enter the column
read c
for((i=0;i<r;i++))
do
for((j=0;j<c;j++))
do
 read a[$(($i))$(($j))]
done
done
echo "${a[@]}"
for((i=0;i<r;i++))
do
for((j=0;j<c;j++))
do
  echo ${a[$(($i))$(($j))]} 
done
done
