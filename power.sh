#!/bin/bash -x

read -p "Enter the value of n: " n
i=1
while (( $i <= $n ))
do
	total="$(( 2 ** $i ))"
	((i++))
	if (( $total <= 256 ))
	then
		echo "$total"
	else
		exit
	fi
done
