#! /bin/bash

#Script using ImageMagick to add a label at the bottom of the image with the image's filename

#find all jpg files in this directory and sub-directories and append a label to them with the filename (%t)
for f in $(find ./ -name '*.jpg');
do
    convert -monitor "$f" \
        -gravity SouthWest -background White -splice 0x200 -pointsize 130 \
        -annotate +10+10 'University of Toronto Archives. %t' "$f"
done