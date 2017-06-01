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
./kadai3.sh 2 2 > $tmp-out || ERROR_EXIT "TEST4-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2"

echo test4 OK

rm -f $tmp-*
exit 0
