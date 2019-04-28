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


