#! /bin/bash

#Script using ImageMagick to resize some tif files to 600dpi with max width of 6000px, which is approximately 8"x10", convert to jpg, and add a label at the bottom of the image

#delete hidden files because
find ./ -type f -name ".*" -delete
    echo "Step 1: Hidden files deleted"

#delete thumbs
find ./ -iname thumbs.db -delete
    echo "Step 2: Thumbs.db deleted"
    echo "Step 3: Now let's convert some files!"

#in this folder and all subdirectories, find tif files and convert them; monitor flag displays progress
for f in $(find ./ -name '*.tif');
do
    convert -monitor -density 600 -resize 6000x6000 "$f" "${f%.*}.jpg"
done

#find all jpg files and append a label to them with the filename (%t)
for f in $(find ./ -name '*.jpg')
do
    convert "$f" \
        -gravity SouthWest -background White -splice 0x200 -pointsize 130 \
        -annotate +10+10 'University of Toronto Archives. %t' "$f"
done