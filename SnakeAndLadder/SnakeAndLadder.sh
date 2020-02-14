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
	echo 
        return $CountUser
        ;;

     2) if (($CountUser==99))
	then
         return $CountUser
	else
	CountUser=$(($CountUser+2))
	echo 
       return $CountUser
	fi
        ;;

     3) if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ]
	then
	echo 
	return $CountUser
	else
	CountUser=$(($CountUser+3))
	echo 
        return $CountUser
	fi
        ;;

     4) if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ] || [ $CountUser -eq 97 ]
	then
	echo 
	return 
	else
	CountUser=$(($CountUser+4))
	echo
        return $CountUser
	fi
        ;;

      5)if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ] || [ $CountUser -eq 97 ] || [ $CountUser -eq 96 ]
	then
	echo
	return $CountUser
	else
	CountUser=$(($CountUser+5))
	echo
        return $CountUser
	fi
        ;;

      6)if [ $CountUser -eq 99 ] || [ $CountUser -eq 98 ] || [ $CountUser -eq 97 ] || [ $CountUser -eq 96 ] || [ $CountUser -eq 95 ]
	then
	echo
	return $CountUser
	else
	CountUser=$(($CountUser+6))
	echo $CountUser
        return $CountUser
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
	echo
        return $CountUser
	fi
        ;;

     2) if [ $CountUser -eq 1 ] || [ $CountUser -eq 0 ]
	then
         return $CountUser
	else
	CountUser=$(($CountUser-2))
	echo
        return $CountUser
	fi
        ;;

     3) if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 0 ]
	then
	echo
	return $CountUser
	else
	CountUser=$(($CountUser-3))
	echo
        return $CountUser
	fi
        ;;

     4) if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 0 ]
	then
	echo
	return $CountUser
	else
	CountUser=$(($CountUser-4))
	echo
        return $CountUser
	fi
        ;;

      5)if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 0 ]
	then
	echo
	return $CountUser
	else
	CountUser=$(($CountUser-5))
	echo
        return $CountUser
	fi
        ;;

      6)if [ $CountUser -eq 1 ] || [ $CountUser -eq 2 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 3 ] || [ $CountUser -eq 5 ] || [ $CountUser -eq 0 ]
	then
	echo
	return $CountUser
	else
	CountUser=$(($CountUser-6))
	echo
        return $CountUser
	fi
        ;;

   *) echo error
   esac

}



#_________________________________

#main function

while(($CountUser!=100))
do
echo press 1 for No play
echo press 2 for move forward
echo press 3 for move backward
read move


case $move in

1) echo $CountUser
   ;;

2) Ladder $CountUser
  echo .. $?
  echo $CountUser
   ;;

3) Snake $CountUser
   echo $CountUser
   ;;
esac

done
