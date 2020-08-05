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
	while [ $(($H-$T)) -eq 0 ]
	do
	 	randomCheck=$((RANDOM%2))
   	if [ $randomCheck -eq 1 ]
   	then
      	((H++))
   	else
      	((T++))
   	fi
		while [[ $(($H-$T)) -eq 1 || $(($T-$H)) -eq 1 ]]
   	do
      	randomCheck=$((RANDOM%2))
      	if [ $randomCheck -eq 1 ]
      	then
         	((H++))
      	else
         	((T++))
      	fi
   	done
	done
echo "Heads: $H"
echo "Tails : $T"
elif [ $H -gt $T ]
then
  echo "Heads won by $(($H-$T)) times more than Tails"
else
  echo "Tails won by $(($T-$H)) times more than Heads"
fi

