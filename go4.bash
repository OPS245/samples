#!/bin/bash

optionA=1
optionB=1
optionC=1
optionD=1

while getopts :ab:cd arg
do
	case $arg in
		a) optionA=0 ;;
		b) 
			optionB=0
			bsArg=$OPTARG
		;;
		c) optionC=0 ;;
		d) optionD=0 ;;
		:)
			echo "$OPTARG requires an argument"
			exit 1
		;;
		\?) echo "option $OPTARG is not recognized" ;;
	esac
done

if [ $optionA -eq 0 ]
then
	echo "Doing something for -a"
fi
if [ $optionB -eq 0 ]
then
	echo "-b had an option: $bsArg"
fi
if [ $optionC -eq 0 -a $optionD -eq 0 ]
then
	echo "Combo of -c and -d"
elif [ $optionC -eq 0 ]
then
	echo "Just option c, no d"
elif [ $optionD -eq 0 ]
then
	echo "option d with -c"
fi
