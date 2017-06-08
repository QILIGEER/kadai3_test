#!/bin/bash

## arguments check
# input number check
if [ $# -lt 2 ]; then
  echo "kadai3.sh に2つの自然数入力してください" 1>&2
  exit 1
fi

a=$1
b=$2

# # inputs are not number
if [[ ! $1 =~ ^[0-9]+$ || ! $2 =~ ^[0-9]+$ ]]; then
  echo "kadai3.sh に2つの自然数入力してください" 1>&2
  exit 1
fi

# 0 check
if [ $1 -le 0 -o $2 -le 0 ]; then
  echo "数字0ダメです！kadai3.sh に2つの自然数入力してください" 1>&2
  exit 1
fi






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
