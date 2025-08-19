#!/bin/bash

#simple loop
#for i in 1 2 3 4 5
#do
#  echo "number :$i"
#done

#using start end {..}

#for i in {1..9}
#do
#   echo "$i"
#done

#step size
#for i in {0..10..2}
#do
#  echo "$i"
#done

#looping through files in bash
#for file in *.sh
#do
#  echo "$file"
#done

#loop through all files in directory
#for file in /mnt/c/Users/Lenovo/OneDrive/Desktop/sagar/*
#do
# echo "$file"
#done

#loop through files and read content
#for file in *.sh
#do
# echo "...reading...$file"
# cat "$file"
#done

#loop through files with condition
#count=0
#for file in /mnt/c/Users/Lenovo/OneDrive/Desktop/sagar/*
#do
# if [[ $file == *.sh ]]; then
#   echo "$file"
#   ((count++))
# else
#   echo "there are $count .sh file here"
# fi
#done

#nested loop (file+folder)

for dir in /mnt/c/Users/Lenovo/OneDrive/Desktop/sagar/*
do
  if [ -d "$dir" ]; then
    echo "Directory:$dir"
    for file in "$dir"/*
      do
          #if empty file there
          [ -e "$file" ] || continue
          echo " ->$file"
      done
  fi
done

