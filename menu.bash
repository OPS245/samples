#!/bin/bash

echo "To help us direct your call, please select a department:"

echo "For accounting, press 1."
echo "For human resources, press 2."
echo "For public relations, press 3."
echo "For collections, press 4."
echo "For complaints, press 5."

read ans

echo "You pressed $ans."
sleep 3
echo "We're sorry, no one from that department is available to take your call."
sleep 3
echo "Please call again. Good-bye"
