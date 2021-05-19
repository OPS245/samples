#!/bin/bash

magic=42
read -p "Guess the magic number: " guess

if [ $magic -eq $guess ]
then
 echo "$guess is correct!!"
else
 echo "$guess is not correct."
fi
