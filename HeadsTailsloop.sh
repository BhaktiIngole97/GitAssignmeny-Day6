#!/bin/bash -x
HCount=0
TCount=0
count=1
isHeads=0

while (( $count <= 21 ))
do
	((count++))
	randomcheck="$((RANDOM%2))"
	if (( $isHeads == $randomcheck ))
	then
		((HCount++))
	else 
		((TCount++))
	fi
	
	if (( $HCount == 11 ))
	then
		echo "Head 11 times"
		exit
	elif (( $TCount == 11 ))
	then
		echo "Tail 11 times"
		exit
	else
		echo "Next Loop"
	fi
done

