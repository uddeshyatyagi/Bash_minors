#!/bin/bash

let win=0
let lose=0
x=""

if [ "$#" -lt 2 ]
then
	echo "How many times do u want to roll?"
	read rolls
	echo "How many dice do u want to roll? "
	read dice_num
else
	rolls=$1
	dice_num=$2
fi

dice=( red yellow yellow green green green )
for i in $(seq 1 $rolls)
do
	for y in $(seq 1 $dice_num)
	do
		x="${x}${dice[$(( $RANDOM%5 ))]},"
	done

	echo "$x"
	outcome="$(echo "$x" | grep red | grep -v green)"
	if [ "$outcome" == "" ]
	then
		let win+=1
	else
		let lose+=1

	fi

	x=""
done

echo "------------------------------------------"
echo "wins=$win"
echo "loses=$lose"
