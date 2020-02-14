#!/bin/bash/ -x
echo WECOME TO SNAKE AND LADDER
echo single player playeing the game and his starting position is 0
#random function for randomly generated number
random(){
 x=$(($(($RANDOM%6))+1))
return $x
}
###########
CountUser=0
Ladder(){
echo
# random function calling for rolling die
random
 a=$?
echo die value is $a
#echo enyter into the case
   case $a in
     1) CountUser=$(($CountUser+1))
	return $CountUser
        ;;

     2) if (($CountUser==99))
	then
         return $CountUser
	else
	CountUser=$(($CountUser+2))
       return $CountUser
	fi
        ;;

     3) if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser+3))
        return $CountUser
	fi
        ;;

     4) if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ] || [ $CountUser -eq 97 ]
	then
	return
	else
	CountUser=$(($CountUser+4))
        return $CountUser
	fi
        ;;

      5)if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ] || [ $CountUser -eq 97 ] || [ $CountUser -eq 96 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser+5))
        return $CountUser
	fi
        ;;

      6)if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ] || [ $CountUser -eq 97 ] || [ $CountUser -eq 96 ] || [ $CountUser -eq 95 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser+6))
        return $CountUser
	fi
        ;;

   *) echo error
   esac
}
#----------------------------------------------------------------------------------------
Ladder2(){
echo
# random function calling for rolling die
random
 a=$?
echo die value is $a
#echo enyter into the case
   case $a in
     1) CountUser2=$(($CountUser2+1))
	return $CountUser2
        ;;

     2) if (($CountUser2==99))
	then
         return $CountUser2
	else
	CountUser2=$(($CountUser2+2))
       return $CountUser2
	fi
        ;;

     3) if [ $CountUser2 -eq 99 ] || [ $CountUser2 -eq 98 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2+3))
        return $CountUser2
	fi
        ;;

     4) if [ $CountUser2 -eq 99 ] || [ $CountUser2 -eq 98 ] || [ $CountUser2 -eq 97 ]
	then
	return
	else
	CountUser2=$(($CountUser2+4))
        return $CountUser2
	fi
        ;;

      5)if [ $CountUser2 -eq 99 ] || [ $CountUser2 -eq 98 ] || [ $CountUser2 -eq 97 ] || [ $CountUser2 -eq 96 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2+5))
        return $CountUser2
	fi
        ;;

      6)if [ $CountUser2 -eq 99 ] || [ $CountUser2 -eq 98 ] || [ $CountUser2 -eq 97 ] || [ $CountUser2 -eq 96 ] || [ $CountUser2 -eq 95 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2+6))
        return $CountUser2
	fi
        ;;

   *) echo error
   esac
}
#snake function..........................

Snake(){
echo
# random function calling for rolling die
random
 a=$?
echo die value is $a
#echo enyter into the case
   case $a in
     1) if [ $CountUser -eq 0 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser-1))
        return $CountUser
	fi
        ;;

     2) if [ $CountUser -eq 1 ] || [ $CountUser -eq 0 ]
	then
         return $CountUser
	else
	CountUser=$(($CountUser-2))
        return $CountUser
	fi
        ;;
     3) if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 0 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser-3))
        return $CountUser
	fi
        ;;

     4) if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 0 ]
	then
        return $CountUser
	else
	CountUser=$(($CountUser-4))
        return $CountUser
	fi
        ;;

      5)if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 0 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser-5))
        return $CountUser
	fi
        ;;

      6)if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 5 ] || [ $CountUser -eq 0 ]
	then
	return $CountUser
	else
	CountUser=$(($CountUser-6))
        return $CountUser
	fi
        ;;

   *) echo error
   esac

}

# snake function for user 2...........................................................................
Snake2(){
echo
# random function calling for rolling die
random
 a=$?
echo die value is $a
#echo enyter into the case
   case $a in
     1) if [ $CountUser2 -eq 0 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2-1))
        return $CountUser2
	fi
        ;;

     2) if [ $CountUser2 -eq 1 ] || [ $CountUser2 -eq 0 ]
	then
        return $CountUser2
	else
	CountUser2=$(($CountUser2-2))
        return $CountUser2
	fi
        ;;

     3) if [ $CountUser2 -eq 1 ] || [ $CountUser2 -eq 2 ] || [ $CountUser2 -eq 0 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2-3))
        return $CountUser2
	fi
        ;;

     4) if [ $CountUser2 -eq 1 ] || [ $CountUser2 -eq 2 ] || [ $CountUser2 -eq 3 ] || [ $CountUser2 -eq 0 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2-4))
        return $CountUser2
	fi
        ;;

      5)if [ $CountUser2 -eq 1 ] || [ $CountUser2 -eq 2 ] || [ $CountUser2 -eq 3 ] || [ $CountUser2 -eq 3 ] || [ $CountUser2 -eq 0 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2-5))
        return $CountUser2
	fi
        ;;

      6)if [ $CountUser2 -eq 1 ] || [ $CountUser2 -eq 2 ] || [ $CountUser2 -eq 3 ] || [ $CountUser2 -eq 3 ] || [ $CountUser2 -eq 5 ] || [ $CountUser2 -eq 0 ]
	then
	return $CountUser2
	else
	CountUser2=$(($CountUser2-6))
        return $CountUser2
	fi
        ;;

   *) echo error
   esac

}



#_________________________________

#main function
#this count variable is for no of total time die was played
count=0
userTurn(){
echo press 1 for No play
echo press 2 for move forward
echo press 3 for move backward
 move=$(($RANDOM%3+1))
echo
case $move in

1)   echo $CountUser
   ;;

2) Ladder $CountUser
  
  echo $CountUser
   ;;

3) Snake $CountUser
   echo $CountUser
   ;;
esac
count=$(($count+1))

}
#user 2 function..........................................
CountUser2=0
count2=0
userTurn2(){
move=$(($RANDOM%3+1))
echo press 1 for No play
echo press 2 for move forward
echo press 3 for move backward



case $move in

1) echo $CountUser2
   ;;

2) Ladder2 $CountUser2
    echo $CountUser2
   ;;

3) Snake2 $CountUser2
   echo $CountUser2
   ;;
esac
count2=$(($count2+1))

}
# win methos
win(){
    if [ $CountUser2 -eq 100 ] || [ $CountUser -eq 100 ]
    then
    echo result_________________________________________________________
    echo
    echo $CountUser 1st user score
    echo $CountUser2 2nd player score
    if(($CountUser2==100))
    then
    echo user 2 wins
    fi
if(($CountUser==100))
then
echo user 1 wins
fi
    exit 0
    fi


}
#my main function from where program is starting...................................................

ee=1
while((ee!=0))
do
echo user 1 turn
echo -----------

userTurn
win

echo -----------
echo user 2 turn
echo ------------
userTurn2
win
echo
done
echo total number of times the dice was played to win the game is : $count


