#!/bin/bash -x
H=0
T=0
while [[ $H -lt 21 && $T -lt 21 ]]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		((H++))
	else
		((T++))
	fi
done

if [ $H -eq $T ]
then
echo " it is tie "
elif [ $H -gt $T ]
then
  echo "Heads won by $(($H-$T)) times more than Tails"
else
  echo "Tails won by $(($T-$H)) times more than Heads"
fi

