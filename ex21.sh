#!/usr/bin/bash
echo "enter number"
read n
echo "even number"
for ((i=0;i<=n;i++))
do
if ((i % 2 == 0))
then
echo $i
fi
done
echo "odd number"
for ((i=0;i<=n;i++))
do
if ((i % 2!=0))
then
echo $i
fi 
done
