#!/bin/bash
path=$1
archivename=$2
shift 2
mkdir "$path"
for format in $@
do
    find ~/ -depth -name "*.$format" -exec cp --parents {} "$path" \; 
done
tar -czf "$archivename" "$path" &> /dev/null 
echo "done"

