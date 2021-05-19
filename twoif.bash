#!/bin/bash

magic=42
read -p "Guess the magic number: " guess

if [ $magic -eq $guess ]
then
 echo "$guess is correct!!"
fi
if [ $magic -ne $guess ]
then
 echo "$guess is not correct"
fi
