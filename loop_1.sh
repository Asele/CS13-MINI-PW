#!/bin/bash -x

# Task 1 Loops

for X in "$@" ; do
    touch "$X"
    date > "$X"
done
