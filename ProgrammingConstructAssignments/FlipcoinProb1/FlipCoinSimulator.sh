#!/bin/bash -x


randomCheck=$(( RANDOM%2 ))

if [ $randomCheck -eq 1 ]
then 
		echo Tail
else
		echo Head
fi
