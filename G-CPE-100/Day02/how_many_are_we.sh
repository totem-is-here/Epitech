#! /bin/bash

if [ -n "$1" ]
then
    awk -F ";" -v city="$1" 'tolower($3) == tolower(city)' students.csv | wc -l
else
    wc -l
fi
