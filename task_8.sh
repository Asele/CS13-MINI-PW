#!/bin/bash

# Task 8
# Swap files
# Wronska & Lach

# Add checks to 2. script arguments and make sure that:
# - both arguments are present
# - both of them are regular files
# In case of error print informational message and exit.

# check if the number of given arguments is equal to two
if [ $# -eq 2 ] ; then

    # check if both files are "regular" (fine)
    if [ -f $1 -a -f $2 ] ; then
        TMP=TEMPORARY
        
        # move a file to temporary location (defined as a name for new file in variable TMP)
        mv $2 $TMP
        
        # swap 1 and 2
        mv $1 $2
        
        #swap file two stored in temporary location with file 1
        mv $TMP $1
      
    # if files are not regular, stop the script 
    else
        echo 'Files are corrupted, check it!'
        exit 1
    fi
fi
