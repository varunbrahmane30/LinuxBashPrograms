#!/bin/bash -x

scount=0
dcount=0

randomcheck=$((RANDOM%2))

while [[ $res1 -le 20 && $res2 -le 20 ]]
do
	randomcheck=$((RANDOM%2))
if [[ $randomcheck -eq 0 ]]
then
	echo H;
	res1=$((scount++))
	randomcheck=$((RANDOM%2))

	if [[ $randomcheck -eq 1 ]]
	then
		echo HT;
		res2=$((dcount++))
	else 
		echo HH;
		res2=$((dcount++))
	fi
else
	echo T;
	res1=$((scount++))
	randomcheck=$((RANDOM%2))
	if [[ $randomcheck -eq 0 ]]
	then
		echo TT;
		res2=$((dcount++))
	else 
		echo TH;
		res2=$((dcount++))
	fi
fi
 
done

echo $res1
echo $res2
