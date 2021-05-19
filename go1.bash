#!/bin/bash

optionA=1
optionB=1
optionC=1
optionD=1

while getopts abcd arg
do
	case $arg in
		a) optionA=0 ;;
		b) optionB=0 ;;
		c) optionC=0 ;;
		d) optionD=0 ;;
	esac
done

#if statements to determine what to do based on the options from the command line

if [ $optionA -eq 0 ]
then
	echo "Doing something for -a"
fi
if [ $optionB -eq 0 ]
then
	echo "User entered -b"
fi
if [ $optionC -eq 0 ]
then
	echo "option c was selected"
fi
if [ $optionD -eq 0 ]
then
	echo "option d"
fi
