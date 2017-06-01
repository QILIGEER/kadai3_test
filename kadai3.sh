#!/bin/sh

## arguments check
# input number check
if [ $# -lt 2 ]; then
  echo "kadai3.sh に2つの自然数入力してください" 1>&2
  exit 1
fi
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
