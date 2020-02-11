#!/bin/sh -x
echo enter rows \n you boy
read r
echo enter column
read c

for((i=0;i<$r;i++))
do
for((j=0;j<$c;j++))
do
 read  x[$(($i))$(($j))]
done
done
echo ${x[@]}
echo \n

for((i=0;i<$r;i++))
do
for((j=0;j<$c;j++))
do
echo x
done
done

ar=(a b c d e f g h i j k l )
echo ${ar[@]}
