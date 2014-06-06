#!/bin/bash -x
#*3. Modify script from task one, to use while loop and shift instead
# of for loop.

#Add --help option to a script, print multi-line information using here
#document. 

#A shift is a shell builtin that removes first argument from argument
#list, so: value of $1 is second argument, $2 -- third and so on.
#$# is decremented to match the new number of arguments.

while [ -n "$1" ] ; do
    touch "$1"
    date > "$1"
    shift
done
