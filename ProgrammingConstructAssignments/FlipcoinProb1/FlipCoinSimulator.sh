#!/bin/bash -x

hcount=0
tcount=0

while [[ ($hcount -lt 21) && ($tcount -lt 21) ]]
do
	randomCheck=$(( RANDOM%2 ))
	if [[ $randomCheck == 0 ]]
	then
		echo "Head"
		((hcount++));
	else
		echo "Tail"
		((tcount++));
	fi
done

echo "head count is: $hcount"
echo "tail count is: $tcount"

if [[ $hcount -eq 21 ]]
then
	echo "$hcount times Head is winner"
elif [[ $tcount -eq 21 ]]
then
	echo "$tcount times Tail is winner"
else
	echo "match is tie"
fi
