#!/bin/bash
echo "nee"
echo "enter the value"
read n
echo "enter the 1st number"
read a
echo "enter the  2nd number"
read b
if [ $n -eq 1 ]
then
	sum=`expr $a + $b`
	echo "sum is : $sum"
elif [ $n -eq 2 ]
then
	diff=`expr $a - $b`
	echo "diff is :$diff"
elif [ $n -eq 3 ]
then
	multi=`expr $a \* $b`
	echo "multi is :$multi"
elif [ $n -eq 4 ]
then
	div=`expr $a / $b`
	echo "div is :$div"
else
	echo "invalid choice"
fi

