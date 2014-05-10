#!/bin/bash

# TASK 7 (same base with 5)
# Checking the length of the files and printing out the longer one
# Wronska & Lach

# Write a script that accepts exactly 2 arguments -- regular file names.
# The script prints contents of a file containing more lines.

FILE1=$1 # assign given arguments to variables
FILE2=$2 

# check if the number of lines is greater in the first file than in the second
if [ `wc -l $FILE1 | cut -d" " -f1` -gt `wc -l $FILE2 | cut -d" " -f1` ] ; then

    # display file 1 in terminal
            cat $FILE1
            
# if not check equality of files
elif [ `wc -l $FILE1 | cut -d" " -f1` -eq `wc -l $FILE2 | cut -d" " -f1` ] ; then

    # display both files
            echo "The files are equaly long"
            echo "FILE 1:"
            cat $FILE1
            echo "FILE 2:"
            cat $FILE2
       
# display file 2 when previous comparisons are false     
else
            cat $FILE2
fi
