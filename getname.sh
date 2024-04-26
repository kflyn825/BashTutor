#!/bin/bash

# Interactive reading of a variable
echo "ENTER YOUR NAME"
read name
# Display variable input
echo The name given was :$name



# check for non-existent file, exit status will be 2
#
ls somefile  
echo "status: $?"

# create file, and do again, exit status will be 0
touch somefile
ls somefile  
echo "status: $?"

# remove the file to clean up
rm somefile


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
exit 0
