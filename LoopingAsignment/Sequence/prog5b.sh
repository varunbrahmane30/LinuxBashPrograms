#!/bin/bash -x

read -p "Enter First area in feet (height) :" A1
read -p "Enter Second Area in feet (Width) :" A2
area=$(($A1 * $A2));

meter=$(( $area*m | bc ))

echo  "Plot area in meter =" $meter;
