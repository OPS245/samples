#!/bin/bash

magic=42
read -p "Guess the magic number: " guess

if [ $magic -eq $guess ]
then
 echo "$guess is correct!!"
else
 echo "$guess is not correct."
 diff=$((magic - guess))
 if [ $diff -gt -5 -a $diff -lt 5 ]
 then
  echo "Close though..."
 else
  echo "Not even close."
 fi
fi
