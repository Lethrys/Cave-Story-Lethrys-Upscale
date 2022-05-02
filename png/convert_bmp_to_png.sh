#!/bin/bash
# converts bmp to png in data/
for i in $(find data/ -type f -print | grep -i .bmp)
do
    echo $i
    mogrify -format png -transparent Black $i
    rm $i
done
