#!/bin/bash -x
echo enter the stack
read stack
echo enter the goal
read goal
echo enter the no of time you wanna play
read play

for((i=1;i<=play;i++))
do

money=$stack
bit=1

while(($money!=$goal && $money!=0))
do
a=$(($RANDOM%2))

if(($a==0))
then
money=$(($money-1))
else
money=$(($money+1))
fi
done

if(($money==0))
then
 echo you are broke
loss=$(($loss+1))
else
echo you are win
win=$(($win+1))
fi
done
echo "..................."
echo "$win times win"
echo "$loss times loss"
