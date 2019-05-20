#! /bin/bash
grep -v '^$' Blanklinebefore > BlanklineAfter
sed '/oldfunc/s/^/#: migrate to new func/' sample
sed '/foo/,/bar/ s/o/a/' sample
sed -n '1,3p' sample
sed '/foo/! s/ar/arr/' sample
cut -d : -f 1 /etc/passwd
ls -l | cut -c 1-10
#output first and fifth field
awk -F : '{ print $1, $5 }' linuxpasswd
#set output field seprator
awk -F : -v 'OFS=**' '{print $1, $5}' linuxpasswd
#output the selected fields
awk -F : '{ print "User", $1, "is really", $5}' linuxpasswd
#BEGIN and END is the operation before scanning text
awk 'BEGIN {print "*******"; FS=":"; OFS=" "} {print $1, $5} END {print "*******"}' linuxpasswd
#remove the duplicated records
cat test_sort.txt | sort -u
#make the list reverse
cat test_sort.txt | sort -r
## 按照常规数值排序
cat test_sort.txt |sort -g
## 按照字符串数值排序
cat test_sort.txt |sort -n
#sort as the third field
cat test_sort.txt | sort -t "|" -k 3
#文本块排序 先把一块放在一行里头 gsub函数是全局替换函数 相当于s/x/y/z ; RS=记录分隔符； ORS=输出记录分隔符
cat my-friend | awk -v RS="" '{ gsub("\n", "%z");print }' | sort -f | awk -v ORS="\n\n" '{ gsub("%z","\n"); print }' | grep -v '# SORTKEY'
#wc -c(字符数) -l (行数）-w（单词数）
wc linuxpasswd 
