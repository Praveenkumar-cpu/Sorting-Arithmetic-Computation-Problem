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

echo "Compute the value of 'a*b+c': "
S2=$(($a*$b+$c))
echo $S2

echo "Compute the value of 'c+a/b': "
S3=$(($c+$a/$b))
echo $S3

echo "Compute the value of 'a%b+c': "
S4=$(($a%$b+$c))
echo $S4

declare -A Compute
   compute=( [1]=$S1 [2]=$S2 [3]=$S3 [4]=$S4 )

echo "Index "${!compute[@]}
echo "Value "${compute[@]}

echo "Read the Values From Dictionary"
echo ${compute[@]}

echo "Results in Descending Order"
printf '%s\n' "${compute[@]}" | sort -nr
