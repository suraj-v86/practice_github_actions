#!/bin/bash

# Use environment variables passed from the workflow
number1=${NUMBER1}
number2=${NUMBER2}

# Validate that both numbers are provided
if [[ -z "$number1" || -z "$number2" ]]; then
  echo "Error: NUMBER1 and NUMBER2 must be set"
  exit 1
fi

# Perform the addition
sum=$((number1 + number2))

# Output the result
echo "Sum of $number1 and $number2 is $sum"
