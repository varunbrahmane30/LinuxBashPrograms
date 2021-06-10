
scount=0;
dcount=0;
tcount=0;

while [[ $res1 -le 20 && $res2 -le 20 && $res3 -le 20 ]]
do
randomcheck=$(($RANDOM%2))
if [[ $randomcheck -eq 0 ]]
then
	echo H;
	res1=$((scount++))
	randomcheck=$(($RANDOM%2))

	if [[ $randomcheck -eq 1 ]]
	then
		echo HT;
		res2=$((dcount++))
	else 
		echo HH;
		res2=$((dcount++))
	fi
else
	echo T;
	res1=$((scount++))
	randomcheck=$(($RANDOM%2))
	if [[ $randomcheck -eq 0 ]]
	then
		echo TT;
		res2=$((dcount++))
	else 
		echo TH;
		res2=$((dcount++))
	fi
fi

randomcheck=$(($RANDOM%2))

if [[ $randomcheck -eq 0 ]]
then
	echo HHH
	res3=$((tcount++))
	randomcheck=$(($RANDOM%2))
	if [[ $randomcheck -eq 0 ]]
	then
		echo HHT
		res3=$((tcount++))
	else
		echo HTH
		res3=$((tcount++))
	fi
else
	echo TTT
	res3=$((tcount++))
	randomcheck=$(($RANDOM%2))
	if [[ $randomcheck -eq 1 ]]
	then
		echo TTH
		res3=$((tcount++))
	else
		echo =THT
		res3=$((tcount++))
	fi
fi

done

declare -A dict

dict[1]="$res1";
dict[2]="$res2";
dict[3]="$res3";

echo ${dict[@]}

if [[ res1 -eq 21 ]]
then
	echo "Singlet Combination is winner... "
elif [[ $res2 -eq 21 ]]
then
	echo "Doublet combination is winner..."
elif [[ $res3 -eq 21 ]]
then
	echo "Triplet Combination is Winner..."
else 
	echo "match is tie...."
fi

