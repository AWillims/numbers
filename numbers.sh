#!/bin/bash
# numbers.sh
# Avery Williams
# CENG298

read -r -p "Type in a positive number: " number_input

if (( number_input <= 0 )); then
    echo "You cannot input anything lower than 1"
    exit 1
fi

if (( number_input < 10 )); then
    for i in $(seq 1 "$number_input"); do
        if (( i % 2 == 0 )); then
            echo "$i: Even"
        else
            echo "$i: Odd"
        fi
    done
else
    echo -n "Odd: "
    seq 1 2 "$number_input" | tr '\n' ' '
    echo
    echo -n "Even: "
    seq 2 2 "$number_input" | tr '\n' ' '
    echo
fi