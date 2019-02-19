#!/bin/bash
path=$1
path=$(readlink -f "$path")
archivename=$2
shift 2
mkdir "$path"
for format in $@
do
    find $HOME -path "$path" -prune -o -name "*.$format" -exec cp --force --backup=numbered {} "$path" \;
done
tar -czf "$archivename" "$path" &> /dev/null
echo "done"

