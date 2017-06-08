#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
   exit 1
}
#########
# TEST1 #
#########
echo "sssss: 2" > $tmp-ans
./kadai3.sh 4 6 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo test1 OK
#########
# TEST2 #
#########
echo "sssss: 6" > $tmp-ans
./kadai3.sh 24 18 > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

echo test2 OK
#########
# TEST3 #
#########
echo "sssss: 1" > $tmp-ans
./kadai3.sh 1 2 > $tmp-out || ERROR_EXIT "TEST3-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2"

echo test3 OK
#########
# TEST4 #
#########
echo "sssss: 2" > $tmp-ans
./kadai3.sh 2 2 1> $tmp-out || ERROR_EXIT "TEST4-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2"

echo test4 OK

##########
# test 5 #
##########

echo "kadai3.sh に2つの自然数入力してください" > $tmp-ans
./kadai3.sh 1 2> $tmp-out && ERROR_EXIT "TEST5-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST5-2"

echo test5 OK

##########
# test 6 #
##########

echo "kadai3.sh に2つの自然数入力してください" > $tmp-ans
./kadai3.sh 2> $tmp-out && ERROR_EXIT "TEST6-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST6-2"

echo test6 OK

##########
# test 7 #
##########

echo "数字0ダメです！kadai3.sh に2つの自然数入力してください" > $tmp-ans
./kadai3.sh 4 0 2> $tmp-out && ERROR_EXIT "TEST7-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST7-2"

echo test7 OK

##########
# test 8 #
##########

echo "数字0ダメです！kadai3.sh に2つの自然数入力してください" > $tmp-ans
./kadai3.sh 0 6 2> $tmp-out && ERROR_EXIT "TEST8-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST8-2"

echo test8 OK

##########
# test 9 #
##########

echo "数字0ダメです！kadai3.sh に2つの自然数入力してください" > $tmp-ans
./kadai3.sh 0 0 2> $tmp-out && ERROR_EXIT "TEST9-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST9-2"

echo test9 OK

###########
# test 10 #
###########

echo "kadai3.sh に2つの自然数入力してください" > $tmp-ans
./kadai3.sh a "12" 2> $tmp-out && ERROR_EXIT "TEST10-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST10-2"

echo test10 OK

rm -f $tmp-*
exit 0
