#!/bin/bash


#These built-in commands of bash include cd, pwd, echo, read, logout, printf, let, time, and ulimit.
#so, for example, echo as compared to /bin/echo, has slightly different behavior

#whith in a script, Parameters and Their Meanings
#       $0	            Script name
#       $1	            First parameter
#       $2, $3, etc.	Second, third parameter, etc.
#       $*	            All parameters
#       $#              Number of arguments

echo '$0='$0 '$1='$1 '$*='$* '$#='$#

#VAR=value         only available in this shell script
#export VAR=value  available in all other shell script

# function_name () {
#    command...
# }

test_func () {
   echo In test_func, '$0='$0 '$1='$1 '$2='$2 '$*='$* '$#='$# 
   echo test_func\($1 $2\) called
}

test_func $1 $2

exit 0
