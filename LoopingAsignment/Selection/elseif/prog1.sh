#!/bin/bash -x

min=100
max=999

diff=max-min+1
for((count=1;count<=5;count++))
do
         op=$(( $min + $RANDOM%$diff ))
        if [ $op -le $min ]
        then
                echo  $op is smallest

        else
                echo $op is biggest
        fi

done
