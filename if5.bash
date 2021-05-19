#!/bin/bash

magic=42
read -p "Guess the magic number: " guess

diff=$((magic - guess))

if [ $diff -eq 0 ]
then
 echo "$guess is correct!!"
elif [ $diff -gt -5 -a $diff -lt 5 ]
then
 echo "Close though..."
else
 echo "Not even close."
fi
