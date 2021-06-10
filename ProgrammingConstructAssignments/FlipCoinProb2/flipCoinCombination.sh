#!/bin/bash -x

scount=0

randomcheck=$((RANDOM%2))

if [[ $randomcheck -eq 0 ]]
then 
	echo H
	res1=$(( scount++ ))
else
	echo T
	res1=$(( scount++ ))
fi

echo $scount
