#!/bin/bash

# collect input from the user

read -p "Enter first number: " number1
read -p "Enter second number: " number2
read -p "Enter the Operator(+, -, *, /): " operand

if [[ "$operand" == + ]]; then
        result=$((number1 + number2))
    echo "The sum is $result"
elif [[ "$operand" == - ]]; then
        result=$((number1 - number2))
    echo "The difference of $number1 and $number2 is $result"
elif [[ "$operand" == * ]]; then
        result=$(( number1 * number2 ))
    echo "The product of $number1 and $number2 is $result"
elif [[ "$operand" == / ]]; then
    if (( "$number2" eq 0 )); then
        echo "Divisible by zero is not allowed"
    else
            result=$(( number1 / number2 ))
        echo "The quotient of $number1 and $number2 is $result"
    fi
else
    echo "Invalid Operator"
fi