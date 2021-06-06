#!/bin/bash -x

for (( num=1;num<=5;num++ ))
do
        op=$(( $RANDOM%100 ))
        echo number =  $op;
        sum=$(( $sum + $op ))
done

echo sum =  $sum;
avg=$(( sum / 5))


echo Average =  $avg;


