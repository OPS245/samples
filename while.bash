#!/bin/bash

# Usage: while.bash
# Author: Peter Callaghan
# Date:  Some time in 2010
# Purpose:  This script demonstrates the use of some simple logical structures
#		e.g. if statements, user interaction, and loops.


echo "Welcome to Lizard Fighter!"

read -p "Please enter your name:" name

sleep 5

while [ "$awake" !=  "y" -a "$awake" != "Y" ]
do
	echo "Mom: Wake up $name!"
	sleep 1
	echo "Mom: Wake up!"
	sleep 1
	echo "Mom: It is your 1Xth birthday.  You are to speak to the king."
	sleep 1
	read -p "Do you wake up [y/n]" awake
done

echo "Mom: Oh good, you're awake.  Hurry and see the king."
echo "Mom: When you leave the house, go left."
sleep 1
echo "Leaving your house you proceed into the street."


while [ "$dir" != "l" -a "$dir" != "l" ]
do
	read -p "Will you go left or right? [l/r]" dir
	if [ "$dir" = "r" -o "$dir" = "R" ]
	then
		echo "The way is blocked by the city guard."
		echo "Guards: You cannot go this way."
	fi 
done

sleep 1
echo "Having gone left, you arrive at the castle."
echo "A seneschal (very distressed at your ragged appearance and uncouth manners) hustles you in to your audience with King Regio III."
sleep 5
echo "King: Ah, $name, it is good to see you well.  There is something you must know."
sleep 5
echo "King: You are not originally from this village.  Your father was the great hero ImpressiveSoundingName, he dropped you and your mother off here on his way to battle the hordes of the evil lord Anethamalice."
sleep 5
echo "King: He never returned."
echo "King: This being your 1Xth birthday it is time for you to fulfill the prophecy and defeat the evil lord...whattever I said his name was."
sleep 5
echo "King: We are going to equip you with the cheapest gear possible (less weaponry than the scullery maid) and send you off with no training whatsoever to fight countless monsters intent on your demise (lucky you, the evil lord what's-his-name always sends the weak stuff first)."
sleep 3
while [ "$accept" != "Y" -a "$accept" != "y" ]
do
	echo "King: Your (adopted) kingdom is in dire need of your aid."
	read -p "King: Will you accept your quest?" accept
	if [ "$accept" != "Y" -a "$accept" != "y" ]
	then
		echo "King: But you must!"
	fi
done

sleep 1
echo "King: Splendid!  Here is a pointed stick and a pot lid."
echo "King: On your way then!"
echo "You leave the castle and head outside town (the Guards have mysteriously disappeared).  You soon encounter a slime!"
sleep 1

hp=10

while [ $hp -gt 0 ]
do
	echo "do you:"
	echo "1: Fight"
	echo "2: Cast"
	echo "3: Defend"
	echo "4: Run"
	read action

	case $action in
		1) echo "You poke the slime with your pointed stick."
			echo "This has no appreciable affect."
			echo "The slime oozes up the stick and does one damage to you."
			hp=$((hp-1))
			echo "You have $hp hit points left" ;;
		2) echo "Cast?!? Cast what? No one said you were a wizard."
			echo "While you are waving your hands in the air, the slime oozes onto your foot and does one damage to you."
			hp=$((hp-1))
			echo "You have $hp hit points left" ;;
		3) echo "You muster your courage and valiantly hide behind your pot lid."
			echo "The slime oozes under the lid and does one damage to you."
			hp=$((hp-1))
			echo "You have $hp hit points left" ;;
		4) echo "You turn to run and trip (rather predictable really)."
			echo "The slime leaps into the air and lands a stunning drup kick."
			hp=$((hp-2))
			echo "You have $hp hit points left" ;;
			
		*) echo "That's not an acceptable option."
			echo "The slime spits a tiny blob of acid at you."
			hp=$((hp-1))
			echo "You have $hp hit points left" ;;
	esac
done

echo "You have died."
sleep 3
read -p "Will you play again?" ans
until [ "$ans" = "y" -o "$ans" = "Y" ]
do
	echo "But you must..."
	sleep 3
	read -p "Will you play again?" ans
done
