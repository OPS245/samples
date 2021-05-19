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
case $ans in
	1) echo "there's just no accounting for some people" ;;
	2) echo "Sorry, we only have inhuman and abhuman resources" ;;
	3) echo "You don't want to talk to them.  They're not very nice" ;;
	4) echo "Oh, don't worry, they'll be bothering you shortly" ;;
	5) echo "Forget that, I'm going to complain about you!" ;;
	*) echo "That is not an acceptable answer" ;;
esac
sleep 3
echo "Please call again. Good-bye"
