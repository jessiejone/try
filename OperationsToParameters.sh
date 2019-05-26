#add some combo to the output of parameters
reminder="Time to go to the dentist"
echo _Time to go to the dentist_
while [ $# != 0 ] #以shift逐渐减少$#,循环将会终止
do 
echo $1
shift             #移开第一个参数
done
#$*将所有命令行参数视为一个单个字符串
#$@将所有命令行参数视为一个个单独的字符串
#set -- 命令可以设置位置参数的值，并将之前存在的任何值q丢弃
set -- hello "hi there" greetings #自hellos开始设置新的位置参数
echo there are 3 total arguments
for i in $* #在没有双引号的情况下，$*和$@是一样的
do echo i is $i
done
for i in "$@" #加了双引号，$@保留真正的参数值
do echo i is $i
done
for i in "$*" #加了双引号，$*表示一个字符串
do echo i is $i
done
