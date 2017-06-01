#!/bin/sh
# arguments check
if [ $# -lt 1 ]; then
  echo "kadai3.sh に2つの自然数入力してください" 1>&2
exit 1
  echo $1
  exit 0
fi

if [ "$1" -gt "$2" ]; then
  expr $1 - $2 | cat
  exit 0
else
  echo error 1>&2
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
