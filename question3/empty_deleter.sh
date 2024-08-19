#!/bin/bash
if [ $# = 0 ]; then # no arguments are given to the program
    i=0
    current_directory=$(pwd)
    for file in `find $current_directory -maxdepth 1 -size 0` # assign the files to variable "file" with loop, whose sizes are 0, maxdepth is chosen as 1 so that it only looks for the files in the current directory and not further
    do
        rm $file
        i=$((i+1))
    done
echo "$i zero-length files are removed from the directory: $current_directory"
exit 0

elif [ $# = 1 ]; then # an argument (path) is given to the program
    i=0
    if [[ -d "$1" ]] # directory exists
    then
        for file in `find $1 -maxdepth 1 -size 0` # assign the files to variable "file" with loop, whose sizes are 0, maxdepth is chosen as 1 so that it only looks for the files in the current directory and not further
        do
            rm $file
            i=$((i+1))
        done
echo "$i zero-length files are removed from the directory: $1"
exit 0

    else # directory does not exist
        echo "This directory does not exist"
        exit 1
    fi
fi
