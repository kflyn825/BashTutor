#!/bin/bash


#if TEST-COMMANDS; then CONSEQUENT-COMMANDS; 
#fi

# if condition
# then
#        statements
# else
#        statements
# fi

#   You can use the if statement to test for file attributes(man test), such as:
#   -e     file	Checks if the file exists
#   -d     file	Checks if the file is a directory
#   -f     file	Checks if the file is a regular file (i.e., not a symbolic link, device node, directory, etc.)
#   -s     file	Checks if the file is of non-zero size
#   -g     file	Checks if the file has sgid set
#   -u     file	Checks if the file has suid set
#   -r     file	Checks if the file is readable
#   -w     file	Checks if the file is writable
#   -x     file	Checks if the file is executable

# if you have A && B && C and A is true but B is false, C will never be executed.
# if you have A || B || C and A is false and B is true, you will also never execute C.



#string test exaMPLE 
# read  strvar
# if [$]

# Numerical test example
#    -eq	Equal to
#    -ne	Not equal to
#    -gt	Greater than
#    -lt	Less than
#    -ge	Greater than or equal to
#    -le	Less than or equal to

# [ $number1 -gt $number2 ]   The operator -gt returns TRUE if number1 is greater than number2.

#Arithmetic Expressions
#Using the $((...)) syntax
#This is the built-in shell format. The syntax is as follows:
#echo $((x+1))