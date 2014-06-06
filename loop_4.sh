#!/bin/bash

# Task 4
# Write a program with simple menu, that allows user to list current
# directory, change the directory and exit the program by typing names
# of actions.

until false ; do
	echo $'type:\nchange\nlist\nexit\n'
	read ANS # take standard input
	
	# compare ANS with following options
	case $ANS in
	
	    # if ANS = new
		change) echo $'\nDirectory to go:'
		read NEW
		cd "$NEW" 2> /dev/null
		;;
		
		# if ANS = list
		list) echo "$PWD:"
		ls
		;;
		
		# if ANS = exit - stop the script!
		exit) exit 0
		;;
	esac
	echo $'\n'
done
