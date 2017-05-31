#!/bin/bash

#input
#echo 'please num a and b:';
#read a b;
a=$1
b=$2

# preparation
c=$((a%b))

# calculation
while [ ${c} -ne 0 ]
do
  a=${b}
  b=${c}
  c=$((a%b))
done;

# result
echo 'sssss:' ${b};
