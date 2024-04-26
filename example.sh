#!/bin/bash



echo " enter directory name to create:"
read dirname
mkdir $dirname

cd $dirname
pwd

touch file1
touch file2
touch file3
ls

echo "This is the first file!" > file1
echo "This is the second file!"  > file2
echo "This is the third file!"  > file3

cat file1
cat file2
cat file3
echo "goodbye"
exit 0
