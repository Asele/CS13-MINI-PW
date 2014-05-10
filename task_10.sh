#!/bin/bash

# Task 10
# One-line Diary
# Wronska & Lach

# Write a script which allows two operations:
# 1) Add entry to diary
# 2) List entries from given date
# All entries are one liners, no entry can contain newlines.
# Entries should be kept in one text file, each entry should be
# prefixed with a date in square brackets.

# check if there is any argument
if [ "$#" -gt 0 ] ; then
	DIARY=$1
else
	echo 'Please give me a name of the Diary as an argument, Sir or Madame.'
	exit 1
fi

# main, infinite loop
until false ; do
	echo $'type:\nnew\nlist\nexit'
	read ANS # take standard input
	
	# compare ANS with following options
	case $ANS in
	
	    # if ANS = new
		new) echo 'New entry:'
		read NEW
		echo "[`date +"%d-%m-%y"`] $NEW" >> "$DIARY" # add NEW text with current date at the begining
		;;
		
		# if ANS = list
		list) echo $'Wazz a date!:\ndd-mm-rr'
		read DATE # get a date
		cat $DIARY | grep "$DATE" # display all lines stored in a diary begining with given DATE
		;;
		
		# if ANS = exit - stop the script!
		exit) exit 0
		;;
	esac
done

