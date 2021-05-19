#!/bin/bash

echo "To help us direct your call, please select a department:"

echo "For accounting, press 1."
echo "For human resources, press 2."
echo "For public relations, press 3."
echo "For collections, press 4."
echo "For complaints, press 5."

read ans

sleep 3
echo "You pressed $ans."
sleep 3
if [ $ans -eq 1 ]
then
	echo "there's just no accounting for some people"
elif [ $ans -eq 2 ]
then
	echo "Sorry, we only have inhuman and abhuman resources"
elif [ $ans -eq 3 ]
then
	echo "You don't want to talk to them.  They're not very nice"
elif [ $ans -eq 4 ]
then
	echo "Oh, don't worry, they'll be bothering you shortly"
elif [ $ans -eq 5 ]
then
	echo "Forget that, I'm going to complain about you!"
else
	echo "That is not an acceptable answer"
fi 
sleep 3
echo "Please call again. Good-bye"
