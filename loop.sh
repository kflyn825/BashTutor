

# for variable-name in list
# do
#     execute one iteration for each item in the list until the list is finished
# done

#The while loop repeats a set of statements as long as the control command returns true.
# while condition is true
# do
#     Commands for execution
#     ----
# done
# 

# The until loop repeats a set of statements as long as the control command is false
# until condition is false
# do
#     Commands for execution
#     ----
# done
echo print all arg
ehco $@
for i in $*; do 
  echo $i 
done


int=0
for words in $(${CROSS_COMPILE}readelf -a bin/busybox | grep "Shared library" | tr -d "[]") ; do
echo line $int is: $words 
((int=int+1))
done


for ((i=1; i<=5; i++)); do
echo "Current Value (Increment): $i"
done


while read -r line
do
echo line $int is: $line 
((int=int+1))
done < tmp.txt

for line in $(cat tmp.txt)
do
echo line $int is: $line 
((int=int+1))
done
