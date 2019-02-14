#!/bin/bash
# programming technology - first task
path=$1
archivename=$2
shift
shift
for format in "$@"
do
	IFS=$'\n'
	codefiles=$(find ~/ -depth -name "*.$format")
	for var in $codefiles
	do
		cp $var $path
	done
	IFS=' '
done
IFS=$'\n'
tar -czf $archivename  $path
echo "done"


