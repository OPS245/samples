#!/bin/bash

# Usage: simpleif.bash
# Author: Peter Callaghan
# Date:  Some time in 2010
# Purpose:  This script introduces some basic scripting concepts.  Most notably user
#		interaction, and if statements.

#This is a comment
#there should be many of these explaining what the script does and how
# it works.
#They are also commonly used to show who worked on a script, and when they 
# wrote it.  It can also show who made changes and what they did.

#This sends a message to stdout
echo "What section are you in?"

#This reads information from stdin
read section
#It will read everything the user types until they hit enter.
#All of that will then be stored in a variable called  section, which just got
# created.

#Normally the echo sends the message and terminates it with a newline
#You can supress that with the -n option
echo -n "You are in section $section"
#notice the difference between using the word section and getting the value
# of the variable section

#The read statement can also send information ( a prompt ) to stdout before
# it reads.  This is done with the -p option
read -p "Do you have class today?" hasClass

#The script can also make simple decisions based on information it is provided
#This is done with the 'if' statement
if [ $hasClass = "yes" ]
then
	echo "Well, you had better get up then."
fi
#The 'if' statement checks a condition.  If that condtion is true, the commands
# contained in the if statement get run.  If that condition is not true, the
# commands are not run.

#If the condition for the if statement is true all code between the keywords
# 'then' and 'fi' gets run.

#The condition is provided with the 'test' command, which has two forms.  We
# saw one above, (the square brackets) but you can also use the word 'test'.
# In general it is better to use the square brackets.  Although both methods
# work the same way, the square brackets stand out more, making the code 
# easier to read.

#There are a number of conditions the test command can check.  Above, we
# saw the use of = to check if one string is equal to another.  You can
# also use != to check if the two strings are not equal.  There is also
# -z to check if the string has a length of 0, or -n to see if it has a
# length of anything other than zero (non-zero).

#Conditions for test are not limited to strings, you can also do comparisons
# of numbers.
if test $hasClass = "yes"
then
 read -p "How many classes do you have today?" remainingTime
 if [ $remainingTime -gt 4 ]
 then
  echo "Oh, that's going to be a long day."
 fi
fi

#conditions using numbers use other characters for comparison.
# -eq for equals
# -ne for not equal
# -lt for less than
# -gt for greater than
# -le for less than or equal to
# -ge for greater than or equal to

#conditions can also be done on files (the existence, type and permissions).
# -e if the file exists
# -f if the file exists and is a normal file
# -d if the file exists and is a directory
# -s if the file exists and has a size bigger than 0
# -r if the file exists and the current user has read permission
# -w if the file exists and the current user has write permission
# -x if the file exists and the current user has execute permission

#Note that these checks will look a little different from the comparisons
# using strings or numbers.  With strings and numbers you where comparing
# two values using some special character, but with the file checks (and the 
# string length checks) you are only checking one value.

#The test statement would look something like this:
if [ -e simple.bash ]
then
 echo "Well, I hope this file exists, otherwise we couldn't be running it!"
fi

#Now might be a good time to point out something we skimmed over a little
# earlier.  If you look back up at the if statement regarding the number of
# classes, you'll notice that there was a second if inside the first one.
# This is called nesting, and you can do it so long as the interior if
# is contained entirely inside the exterior one, and you have the right number
# of ifs, thens and fis.

#This is also an excellent time to point out indentation.  With the nested ifs
# you'll notice the some lines had space at the beginning.  It is used to show
# that some code is subordinate to other code.  That means it depends on the
# other code to be run.  While the shell can tell what code is subordinate to
# what, a human reader may have trouble if the code starts to get complicated.
# Indenting subordinate code a space or two can make it much easier to read
# and understand the code later on.  A uniform style of commenting and
# indenting is an expected part of writing code.

#So far we've only looked at what happens if a test statement evaluates to
# true.  You can also use the ! to reverse the test statement.
read -p "Are you expecting to pass this semester?" passing
if [ ! $passing = "Yes" ]
then
 echo "That's no attitude to have."
 sleep 2
 echo "Buck up!"
 sleep 2
 echo "Buckle down!"
 sleep 2
 echo "Pull up your socks!"
 sleep 2
 echo "...and so forth"
fi

#Okay, that's enough for now.  We'll move on to more complicated uses of
# if next time in complexIf.bash.
