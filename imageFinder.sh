#! /bin/sh

mkdir newDirectory

for dir in */; do
  echo "Processing directory: $dir"
  if find ~/Pictures/SAWARATSUKI.ServiceLogos2 -type f -name "*.png" | grep -q "."; then
    echo "Folder contains PNG files"
    ls $dir
    cp $dir/*.png newDirectory
  else
    echo "Folder does not contain PNG files"
  fi
done
