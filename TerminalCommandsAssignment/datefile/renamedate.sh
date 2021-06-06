



#!/bin/bash -x
date=$(date +%d%m%y)
for file in `ls *.log.1` ;
do
    basename=${file%.*}    # Remove extension
    extension=${file##*.}  # Remove basename
    mv "$file" "$basename"."$date.$extension"
done

