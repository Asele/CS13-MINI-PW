#!/bin/bash

# Task 2
# Wronska & Lach

# Number guessing game II. Write a script that chooses some random
# number on start and asks user to guess it. For every guess program
# prints if it's guessed number is larger or smaller or equal to
# hidden number.
# The script ends after the number is guessed.

NUMBER=$RANDOM
COUNTER=0
while true ; do
    echo 'try to guess:'
    read ANS
    if [ $ANS -gt $NUMBER ]; then
        echo $'guessed number is too BIG\n'
    elif [ $ANS -eq $NUMBER ]; then
        echo 'good job'
        echo "finding corect number took you $COUNTE  tries"
        exit 0
    else
        echo $'guessed number is too SMALL\n'
    fi
    COUNTER=`expr $COUNTER + 1`
done
