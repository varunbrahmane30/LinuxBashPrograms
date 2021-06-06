#!/bin/bash

read -p "enter last number: " number
num=1;
for (( i=1;i<=$number;i++ ))
do
	div= awk "BEGIN {print $num/$i}";
done
