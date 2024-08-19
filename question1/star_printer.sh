#!/bin/bash
file_name=$1
while read number; do # read the lines until the end of the file
    for (( i=1; i<=$number; i++ )) # execute for the read number of times per line
    do
        echo -n "*"
    done
    echo
done < ${file_name}
exit 0
