#!/bin/bash -x

echo "enter a value :" 
read n

i=1;
while [ $i -le 9 ]
do
         i=$(( i + 1 ));
         result=$((n ** i));
         if [ $result -le 256 ]
         then
                 echo "$n to the $i power is $result"
         else
		 exit;         
	 fi
done
