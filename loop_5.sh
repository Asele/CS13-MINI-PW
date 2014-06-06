#!/bin/bash
#Write a script that checks if text files contain any of forbidden
#words. The script accepts n+1 arguments. First -- a name of file
#containing space separated list of forbidden words, then n files to
#check.

#For every file to check script prints one of two messages:
#File <filename> contains forbidden words!
#File <filename> does not contain forbidden words!

#After checking all files, the script prints names of all file names
#that contained forbidden words and exits with success if there were no
#such files, with failure otherwise.

WORDS=`cat "$1"`
FLAG=0

shift

while [ -n "$1" ] ; do
    for X in `cat "$1"` ; do
        for Y in $WORDS ; do
            if [ "$X" = "$Y" ] ; then
                echo "File $1 contains forbiddden words!"
                FLAG=1
                break
            fi
        done
        if [ $FLAG -eq 1 ] ; then
            FAILED="$FAILED $1"
            break
        fi
    done
    if [ $FLAG -eq 0 ] ; then
        echo "File $1 does not contain forbidden words!"
    else
        FLAG=0
    fi
    shift
done

if [ -n "$FAILED" ] ; then
    
    echo $'\ncorrupted files:'
    echo "$FAILED"
    exit 1
else
    exit 0
fi
