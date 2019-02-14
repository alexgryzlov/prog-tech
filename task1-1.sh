#!/bin/bash
# programming technology - first task - first version
path=$1
archivename=$2
IFS=$'\n'
codefiles=$(find ~/ -depth -name "*.cpp")
for var in $codefiles
do
	cp $var $path
done
tar -cvzf $archivename  $path
echo "done"


