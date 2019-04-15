#!/bin/bash
# This script displays the date and who's loggen ond date are:
echo -n "The time and date are: "
date
echo "Let's see who's logged on the system:"
who
echo UID: $UID
echo HOME: $HOME
echo "The cost of the item is \$15"
variable=100
echo "Variable is ${variable}"

days=10
guest='Katie Wang'
echo $guest checked in $days days ago
guest=Jessica
echo $guest checked in $days days ago

testing=`date`
echo "The date and time are: " $testing

today=`date +%y%m%y`
ls -al > log.$today
date >> log.$today

var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo The final result is $var4

var5=`echo "scale=4; $var1 / $var2" | bc`
echo "The answer is $var5"

var6=`bc << EOF
scale=4
a1=($var1 * $var2)
b1=($var3 * $var4)
a1+b1
EOF
`
echo THe final answer for this mess is $var5

if [ -e $HOME ]
then 
echo "OK on the directory, now let's check the file"
if [ -e $HOME/log.log ]
then
echo Appending date to existing file
date >> $HOME/log.log
else
echo Creating new file
date > $HOME/log.log
fi
else
echo "Sorry, you don't have a HOME directory"
fi

if [ -e $HOME ]
then
 echo "The object exists, is it a file?"
 if [ -f $HOME ]
 then
  echo "Yes, it's a file"
 else
  echo "No, it's not a file!"
   if [ -f $HOME/.bash_history ]
   then
   echo "But this is a file!"
   fi
 fi
else
echo "Sorry, the object doesn't exist"
fi

pwfile=/etc/shadow
if [ -f $pwfile ]
then
 if [ -r $pwfile ]
 then
   tail $pwfile
 else
   echo "Sorry, I'm unable to read the $pwfile file"
 fi
else
 echo "The file $pwfile doesn't exist"
fi

file=t15test
touch $file
if [ -s $file ]
then
 echo "The file $file exists and has data in it"
else
 echo "The $file exists and id empty"
fi

date > $file
if [ -s $file ]
then
 echo "The $file file has data in it"
else
 echo "The $file is still empty"
fi


logfile=$HOME/t16test
touch $logfile
chmod u-w $logfile
now=`date +%Y%m%d-%H%M`
if [ -w $logfile ]
then
 echo "The program ran at: $now" > $logfile
 echo "THe first attempt succeeded"
else
 echo "The first attempt failed"
fi
chmod u+w $logfile
if [ -w $logfile ]
then
 echo "The program ran at: $now" > $logfile
 echo "The second attempt succeeded"
else
 echo "The second attempt failed"
fi

val1=10
if (( $val1 ** 2 > 90 ))
then
 ((val2 = $val1 ** 2 ))
 echo The square of $val1 is $val2
fi

case $USER in
rich | barbara)
 echo "Welcome, $USER"
 echo "Please enjoy your visit";;
testing)
 echo "Special testing account";;
cnxinhui)
 echo "Don't forget to log off";;
*)
 echo "Sorry, you're not allowed";;
esac

for test in Alabama Alaska Arizon Arkansas California Colorado
do 
echo The next state is $test
done

for test in I don\'t known if "this'll" work
do 
echo "word:$test"
done

file=states
IFSOLD=$IFS
IFS=$'\n'
for state in `cat $file`
do
echo "Visit beautiful $state"
done
IFS=$IFSOLD

for file in /home/cnxinhui/.b*
do
 if [ -d "file" ]
 then
   echo "$file is a directory"
 elif [ -f "$file" ]
 then
  echo "$file is a file"
 else
  echo "$file doesn't exist"
 fi
done
