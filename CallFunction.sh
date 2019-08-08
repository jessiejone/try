#! /bin/bash
#load all the functions in functions.sh
source ./functions.sh 
db1
echo "The new value is $?"

echo -n "Adding 10 and 15:"
value=`addem 10 15`
echo $value