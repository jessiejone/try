sed '/oldfunc/s/^/#: migrate to new func/' sample
sed '/foo/,/bar/ s/o/a/' sample
sed -n '1,3p' sample
sed '/foo/! s/ar/arr/' sample
cut -d : -f 1 /etc/passwd
ls -l | cut -c 1-10