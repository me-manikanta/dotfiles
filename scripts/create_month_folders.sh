#!/bin/bash

set -e

allMonths=(January February March April May June July August September October November December)

for month in "${allMonths[@]}"
do
    if [ -d $month ]
    then
        echo "Folder for the month $month already exists" 
    else
        mkdir -p $month
        echo "Folder for the month $month has been created"
    fi
done

