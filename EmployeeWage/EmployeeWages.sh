echo for full time press 1
echo for part time press 2
case $x in

1) echo he wanna work full time
wage=$((20*8))
echo his full time wages is : $wage
;;

2) echo he wanna work part time
wage=$((20*4))
echo his part time wages is : $wage
;;

*) echo invalide input
esac


