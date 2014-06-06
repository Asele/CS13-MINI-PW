#!/bin/bash -x

# Task 2.7a
# Write a script that will create a directory which will contain data
# which will be shared across members of some project group.

ANS="-a"

if [[ $1 == -* ]] ; then
    ANS=$1
    shift
fi

DIR=$1
shift

if [ ! -d "$DIR" ] ; then
    mkdir "$DIR"
fi

case "$ANS" in
    "-a") 
        while [ -n "$1" ] ; do
            setfacl -Rm u:"$1":rw -- "$DIR"
            setfacl -d -Rm u:"$1":rw -- "$DIR"
            shift
        done 
        ;;
    "-r")
        while [ -n "$1" ] ; do
            setfacl -Rm u:"$1" -- "$DIR"
            setfacl -d -Rx u:"$1" -- "$DIR"
            shift
        done
        ;;
esac
    



