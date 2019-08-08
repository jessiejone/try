function db1 {
read -p "Enter a value: " value
echo "doubling the value"
return $[ $value * 2 ]
}

function addem {
if [ $# -eq 0 ] || [ $# -gt 2 ]
then
  echo -1
  elif [ $# -eq 1 ]
  then
    echo $[ $1 + $1 ]
  else
    echo $[ $1 + $2 ]
fi
}
