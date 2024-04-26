#!/bin/bash


arg1=$1
echo $arg1[0]

if [ $# -lt 3 ] ; then
      echo argument error,arg1=$1  arg2=$2  arg3=$3 
      echo "Usage: $0 number +/-/*// number2"
      exit 1
fi

#val1=$(( [["$2" != \+]] ))
if [[ "$2" != + ]] ; then echo +
fi

if [[ "$2" != - ]] ; then echo -
fi  
if [[ "$2" != \* ]] ; then echo \*
fi  
if [[ "$2" != / ]] ; then echo /
fi


if [[ "$2" != + ]] && [[ "$2" != - ]] && [[ "$2" != \* ]] && [[ "$2" != / ]] ; then echo ***error***
fi



#val5=$(([[ "$2" != \+ ]] || [[ "$2" != \- ]] || [[ "$2" != \* ]] || [[ "$2" != \/ ]]))
#for i in 1 2 3 4 5
#do
#    echo vale $i is ${val$i}
#done

if [[ "$2" != \+ ]] && [[ "$2" != \- ]] && [[ "$2" != \* ]] && [[ "$2" != \/ ]]
then
    echo argument error,arg1=$1  arg2=$2  arg3=$3 
    echo "Usage: $0 number +/-/*// number2"
    exit 1
fi
echo ----

calc()
{
    echo In calc,arg1=$1  arg2=$2  arg3=$3 
    num1=$1
    op=$2
    num2=$3
    echo "In calc,arg1=$num1  arg2=$op  arg3=$num2"
    ret=0
    if   [[ "$op" == \+ ]] ; then 
        echo adding
        ret=$(($num1+$num2))
    elif [[ "$op" == \- ]] ; then 
        echo sub
        ret=$(($num1-$num2))
    elif [[ "$op" == \* ]] ; then 
        echo mul
        ret=$(($num1*$num2))
    elif [[ "$op" == / ]] ; then
        if [[ $num2 -eq 0 ]]; then
            echo "division by zero error, exited"
            exit 2
        fi
        echo div
        ret=$(($num1/$num2))
    fi
    echo result:$ret
}


calc $1 "$2" $3
exit 0

