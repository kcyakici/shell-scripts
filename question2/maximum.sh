#!/bin/bash
echo "Enter integers one by one to find the maximum among them"
echo """Enter "end" to print the maximum and exit the program"""

read number
if [ $number == "end" ]; then
    echo "No numbers are given, nothing to compare"
    exit 1
else
    while [[ $((number)) != $number ]]; do # to make sure that input is a valid integer
    echo "Expected an integer"
    read number
    done
    max_number=$number # assign first input as max
fi

while [ $number != "end" ]; do
    if [ "$number" -gt "$max_number" ]; then # change max number if new input is greater
        max_number=$number
    fi
    read number
done
echo "Maximum: $max_number"
exit 0
