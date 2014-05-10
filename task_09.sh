#!/bin/bash

# Task 9
# Simple backup
# Wronska & Lach

# Write a script that accepts exactly one regular file name.
# The script puts in users home in backup directory a copy of given file
# with suffix containing current date and time.
# File copying should preserve file permissions.
# Additionally a file with same name, date suffix and .description extension is created.
# The file contains path where original file is stored and information about its permissions.
# If backup directory does not exist, it should be created.
# Check if arguments are correct.

FILE=$1 # asign given file to variable

# check number of given arguments and regularity of passed file
if [ -f $FILE -a $# -eq 1 ] ; then

            NAME="$FILE `date +"%d-%m-%y %T"`" # create name for backup file with actual date
            cp $FILE "$NAME" # copy the file to new location
            
            # create directory "backup" in user's home (~) if it is not already there
            if [ ! -d ~/backup ] ; then
                    mkdir ~/backup
            fi
            
            mv "$NAME" ~/backup/ # move file previously copied to backup dir
            
            # check if given argument contains path to the file if yes, cut it off
            if [ `dirname $FILE` != "." ] > /dev/null ; then
                    NAME=${NAME#`dirname $FILE`}
                    dirname $FILE >> ~/backup/"$NAME.description" # save the path in *.description file
            
            # if there is no path in the argument, then required path = Path to Working Directory
            else
                    echo $PWD >> ~/backup/"$NAME.description" # write it in *.description file
            fi
            
            # read permissions of the file (stat command) and add them to *.description
            echo "Permissions: " >> ~/backup/"$NAME.description"
            stat --format=%A ~/backup/"$NAME" >> ~/backup/"$NAME.description"
fi
