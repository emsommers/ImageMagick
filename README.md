# ImageMagick

Some basic bash scripts for working with images in bulk, including resizing and converting formats, using [ImageMagick](https://imagemagick.org/).

To run, copy script to source folder and then in Terminal:

```
bash [script-name.sh]
```

May encounter memory (RAM) troubles when working with large files. For example, some large TIF files (2 GB >) won't convert and you'll see a line in the Terminal window like this:

```
resize-trussler-pt1.sh: line 15: 28265 Killed
```