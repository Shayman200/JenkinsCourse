#!/bin/bash

# Check if all three numbers are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 num1 num2 num3"
    exit 1
fi

# Read input numbers
num1=$1
num2=$2
num3=$3

# Calculate the average
average=$(echo "scale=2; ($num1 + $num2 + $num3) / 3" | bc)

# Print the result
echo "The average of $num1, $num2, and $num3 is: $average"
