#！/bin/bash
days=(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
for ((i=0; i<${#days[@]}; i++))
do 
 let "totalCount+=1" 
done 

echo ""

for ((i=0; i < ${#days[@]}; i++))
do
 let "daysCount=$i+1"
 echo "This is $daysCount of $totalCount" 
 
 bash handleEach ${days[i]}
 let "errors=$?"
 let "totalErrors+=errors"
 echo error count is : $errors
 echo ""
done

exit $totalErrors
