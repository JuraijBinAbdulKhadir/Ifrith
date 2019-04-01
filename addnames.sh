#!/bin/bash
if [ $# == 2 ]
then
echo "valid"

if [ -f $1 ]
then
echo "file exist"
else 
echo "file not exist"
fi
if grep -Fq $2 $1 
then
echo $2 " is in the file"
else
echo  $2 >> $1   
fi
else
echo "invalid"
fi
