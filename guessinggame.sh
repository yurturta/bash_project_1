#!/usr/bin/env bash
# File: guessinggame.sh
count=0
function countfiles() {
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `ls -a .`
do
	if [[ -f $i ]]
	then 
		let count+=1
	fi
done
}
IFS=$SAVEIFS
countfiles

echo "What is the number of files in the directory?"
while [[ $right -eq 0 ]]
do
  read var
  if [[ $var -eq $count ]] 
  then right=1
  elif [[ $var -gt $count ]]
  then echo "try smaller number"
  else 
  echo "try bigger number"
  fi
done
echo "Congratulations! You found the number of files in the current directory. It is $var"

