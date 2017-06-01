#!/bin/sh
# arguments check
if [ -z $1 -o -z $2 ]; then
  echo "kadai3.sh に2つの自然数入力してください" 1>&2
exit 1
fi

a=$1
b=$2

# preparation
if [$a -lt $b]
then
  c=$a
  a=$b
  b=$c
fi

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
