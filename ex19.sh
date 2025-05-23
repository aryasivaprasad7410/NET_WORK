#!/usr/bin/bash
# Read the number of terms
echo "Enter the value of n" 
read n
# Initialize first two terms
a=0
b=1

echo "Fibonacci series up to $n terms:"

for (( i=0; i<n; i++ ))
do
    echo -n "$a "
    # Calculate next term
    fn=$((a + b))
    a=$b
    b=$fn
done
