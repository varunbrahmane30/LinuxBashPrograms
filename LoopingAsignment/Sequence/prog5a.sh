#!/bin/bash -x

read -p " Enter the value of feet:" feet

inch=$(($feet*12));

echo "Value in inches :" $inch;

