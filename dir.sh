#!/bin/bash
declare -l DIR
echo -n "Enter a directory to create: "
read DIR
if [[ -e $DIR ]]
  then
   echo "$DIR already exists"
   exit 1
  else
   if [[ -w $PWD ]]
     then
      mkdir $DIR
     else
       echo "You do not have permissions to $PWD"
       exit 2
     fi
fi