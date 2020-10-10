#!/bin/bash
set -e
if [ -z "$1" ]
then
    echo -e "Specify the file type"
    exit
fi
index=1
ext=$1
if [ -z "$2" ]
then
    format=05
else
    format=$2
fi
for name in *.$ext
do
    printf -v new_file_name "%""$format""d" $index
    index=$((index+1))
    mv "$name" "$new_file_name.$ext"
    echo "Renaming done for the file $name to $new_file_name.$ext" 
done


