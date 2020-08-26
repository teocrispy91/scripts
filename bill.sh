#!/bin/bash
#declare -i bill
#declare service
#declare -i totalbill
echo "enter the bill amount"
read bill
echo "enter the service"
read service
if [ $service = good ]
then 
    totalbill=`expr $bill + 50`
    echo "total amount"  $totalbill
elif [ $service = average ]
then
    totalbill=`expr $bill + 25`
    echo "total amount" $totalbill
else
    totalbill=`expr $bill + 1`
    echo "total amount" $totalbill
fi

