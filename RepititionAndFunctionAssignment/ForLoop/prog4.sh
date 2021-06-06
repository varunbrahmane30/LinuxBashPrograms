#!/bin/bash

read -p "enter start number :" start
read -p "enter end number :" end

echo "prime numbers are :"
for (( i=$start;i<=$end;i++ ))
do
	count=0;
	temp=$i;
	for (( j=1;j<=$temp;j++ ))
	do
		if [ `expr $i % $j` -eq 0 ]
		then
			count=$(( $count+1 ))
		fi
	done
	if [ $count == 2 ]
	then
		echo $i;
	fi
done
