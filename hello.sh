#!/usr/bin/bash

echo "hello world"

name="john"
echo $name


n1=20
n2=10
result=$((n1+n2))
echo $result

n3=20
n4=10
r=$((n3-n4))
echo $r

#echo "enter num1"
#read num1
#echo "enter num2"
#read num2
#sum=$((num1+num2))
#echo "sum of 2 num is:"$sum


#echo "enter another num"
#read no1
#if((no1 > 0))
#then
#   echo "positive num"
#elif((no1 < 0))
#then
#    echo "negative num"
#else
#     echo "zero"
#fi


user="yestech"
pass=12345

echo "Enter user name"
read user_name

echo "Enter password"
read -s password

if(( $user_name == $user) && ($password == $pass ))
then 
   echo "welcome yestech media"
else
   echo "wrong pass"
fi
