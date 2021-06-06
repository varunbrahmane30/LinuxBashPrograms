#!/bin/bash -x
echo "Enter a Number"
read n

i=1;

while [ $i -le $n ]
do
    i=$(( i + 1 ))
    result=$(( n ** i ));
    echo "$n to the Power $i is : $result"
done


