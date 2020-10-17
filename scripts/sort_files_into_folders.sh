#!/bin/bash

for file in *;
do
    if [[ -f $file ]];
    then
        year=$(stat -f "%Sm" -t "%Y" "$file")
        month=$(stat -f "%Sm" -t "%B" "$file")

        target=$(pwd)/$year/$month
        echo $target

        if [[ ! -f $target ]];
        then
            echo "Creating the $target directory"
            mkdir -p "$target"
        fi

        echo "Moving the file - $file to $target"
        mv "$file" "$target/$file"

    fi 
done
