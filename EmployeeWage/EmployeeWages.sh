
#!/bin/bash/ -x
echo "Welcome to Employee Wage Computation Program"
x=$(($RANDOM%2))
if(($x==0))
then 
echo employ is present
#he works for 8 hour per hour he earns 20 rupees/hour
wage=$((20*8))
echo $wage
else
echo employee is absent
fi

