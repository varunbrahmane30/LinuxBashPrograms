#!/bin/bash

read -p "enter value:" value

read -p "Select an option : 1. feet-Inch 2. Inch-Feet 3. Feet-Meter 4.Meter-Feet " op  
case $op in

	1)
		echo "$value Feet in Inch is :" `awk "BEGIN{print $value * 12 }"` inch
	;;
	2)
		echo "$value Inch in Feet is :" `awk "BEGIN{print $value / 12 }"` feet
	;;
	3)
		echo "$value Feet in Meter is :" `awk "BEGIN{print $value / 3.281 }"` meter
	;;
	4)
		echo "$value Meter in Feet is :" `awk "BEGIN{print $value * 3.281 }"` feet
	;;
	*)
		echo "INvalid OPtion"
	;;
esac
