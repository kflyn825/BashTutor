sysroot=$(${CROSS_COMPILE}gcc --print-sysroot)
prog_interpreter=$(${CROSS_COMPILE}readelf -a bin/busybox | grep "program interpreter" | tr -d "[]")
echo $prog_interpreter
IFS=':'
read -a myvar -i 'interpreter:' <<< "$prog_interpreter"
# Output the array and its length
echo "0 ${myvar[0]}"
echo "1 ${myvar[1]}"
echo "-1 ${myvar[-1]}"
echo "My array: ${myvar[@]}   "
echo "Number of elements in the array: ${#myvar[@]}"

