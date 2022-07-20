#! /bin/bash
echo -n "Enter First Number: "
read a
echo -n "Enter Second Number: "
read b
echo -n "Enter Third Number: "
read c

echo "Compute the value of 'a+b*c': "
S1=$(($a+$b*$c))
echo $S1
