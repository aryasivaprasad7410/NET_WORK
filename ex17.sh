#!/usr/bin/bash
echo "Enter num1"
read num1

echo "Enter num2"
read num2

echo "Enter num3"
read num3

if [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ]; then
    echo "The largest number is: $num1"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ]; then
    echo "The largest number is: $num2"
else
    echo "The largest number is: $num3"
fi

