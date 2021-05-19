#!/bin/bash

# Usage: simpleif.bash
# Author: Peter Callaghan
# Date:  Some time in 2010
# Purpose:  This script adds more content to if statements.  It introduces nested ifs
#		and compound conditions.

#in simpleif.bash we looked at the basics of if statements.  If you have
# not read it yet, do so before you continue here.

#In addition to checking a single condition, the test statement used by if
# can handle the logic of stringing several conditions together using a 
# logical 'and' and 'or'.

#The logical and requires that the statements on both sides be true, while the
# or only requires that at least one of them be.  This leads to and interesting 
# feature of their execution that might catch you off guard if you are not
# aware of it.
# If the condition before the 'and' is false, then the shell will know it
# cannot get both to be true, so it will not waste time executing the condition
# after the 'and'.  Similarly, if the condition before the or is true, then the
# shell will not run the second condition, bacause it already has everything it
# needs to satisfy the 'or' condition.

#Now that we know that, let's look at them in action.
# the 'and' is represented with -a while the or is represented with -o.
# First we need some variables to work with, so lets get some from the user.
read -p "are you in ULI101?" inULI
read -p "Did you get 100% on lab 9 part 2?" percent

#ok, now the if using an and...
if [ $inULI = "y" -a $percent = "y" ]
then
 echo "Good job."
fi

#now let's try an 'or'
read -p "Who is your instructor?" prof
if [ $# -eq 0 -o $# -eq 1 ]
then
 echo "There, that was easy, wasn't it?"
fi

#You could chain multiple ands and ors together but you have to be careful
# as the will quickly grow very hard to interpret.

#A safer bet is to do something with nested ifs.
if [ $inULI = "y" ]
then
 if [ $percent = "y" ]
 then
  echo "Good job on lab 9 part 2."
 fi
fi

#Ok, but what if we want some code to run if the condition is true and some
# other code to run if it is false?
# We use the 'else' statement for that.
if test "Callaghan" = $prof
then
 #All the code until the else gets run if the condition is true
 echo "Keep on truckin'"
else
 #All the code from the else until the fi gets run if the condition is false
 echo "Fine, don't keep truckin'"
fi


#There is one more addition to if to learn about.  If you have multiple
# conditions to check, instead of nesting them several levels deep you can
# use elif (else if)
if [ $inULI = "y" ]
then
 #Okay now we need to revise our definition.
 #If the first condition evaluates to true, the shell will run everything
 # from the then keyword until it finds an elif, and else or a fi.
 echo "Well, being in ULI would explain why you are running this file."
elif [ $prof = "Peter Callaghan" ]
then
 #If the condition with the if evaluated to false, this condition
 #will be run.  If it evaluates to true the shell will run everything from the
 # then until it finds an else, an elif or a fi.
 echo "Ah, one of my former students then."
else
 #As before, if all the preceding conditions evaluate to false, then
 # everything from the else until the fi will be run.
 echo "Just needed a refresher on if statements, did you?"
fi 

#That sums up the if statement.  Now you can have your shell scripts make
# simple and even not so simple decisions.
