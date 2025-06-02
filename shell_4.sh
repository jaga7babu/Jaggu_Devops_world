#Write a shell file to check what is the file type (whether it is a directory or a normal file)

#Output:  "The <Name> is a Normal File" (if its a file), otherwise it should print "The <Name> is a directory"


#!/bin/bash

FileType="Jagapathi_Bio.txt"
path="/mnt/c/Users/babuj/OneDrive/Desktop/Shell preparation"


if [ -f "$path/$FileType" ]; then
    echo "The $FileType is a Normal File"
elif [ -d "$path/$FileType" ]; then
    echo "The $FileType is a Directory"
else
    echo "The $FileType does not exist in the specified path"
fi