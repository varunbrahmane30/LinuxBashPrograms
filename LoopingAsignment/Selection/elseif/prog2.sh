#!/bin/bash -x

read -p " Enter Date:-" dt
read -p " Enter Month:-" M

if (( ($dt <= 20 & $M <= 6) ))
then
        echo "month is :"$M  "and date is :" $dt
        echo "TRUE";


elif (( ($dt < 31) & ($M >= 3 & $M < 6) ))
then
        echo "month is :"$M  "and date is :" $dt
        echo "TRUE";

fi
