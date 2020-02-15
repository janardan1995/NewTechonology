#!/bin/bash/ -x
echo WECOME TO SNAKE AND LADDER
echo single player playeing the game and his starting position is 0
CountUser=0
#random function for randomly generated number
random(){
 x=$(($(($RANDOM%6))+1))
return $x
}

#THIS is for checking an option randomly
move=$(($RANDOM%3+1))

echo press 1 for No play
echo press 2 for move forward
echo press 3 for move backward

random
die=$?
case $move in 

while (($CountUser!=100))
do
random


die=$?
echo "die : $die"
move=$(($(($RANDOM%3))+1))
case $move in
1) echo ..........$CountUser
   ;;

2)  CountUser=$(($CountUser+$die))
   echo .......... $CountUser
   ;;

3) CountUser=$(($(($CountUser))-$(($die))))
   echo .........$CountUser
   ;;

 *) echo error
esac
done

