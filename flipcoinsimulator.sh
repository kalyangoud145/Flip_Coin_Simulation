#!/bin/bash -x
H=0
T=0
i=1
while [ $i -le 10 ]
do
	randomCheck=$((RANDOM%2))
	if [ $randomCheck -eq 1 ]
	then
		((H++))
	else
		((T++))
	fi
((i++))
done
echo "Heads won : $H Times"
echo "Tails won :$T Times"
