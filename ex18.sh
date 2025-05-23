#!/usr/bin/bash 
echo "enter a number"
read num 
original=$num

# Initialize sum
sum=0

# Loop to calculate cube of each digit
while [ $num -gt 0 ]
do
    digit=$(( num % 10 ))
    cube=$(( digit * digit * digit ))
    sum=$(( sum + cube ))
    num=$(( num / 10 ))
done
# Check if it's an Armstrong number
if [ $sum -eq $original ]; then
    echo "$original is an Armstrong number."
else
    echo "$original is not an Armstrong number."
fi

