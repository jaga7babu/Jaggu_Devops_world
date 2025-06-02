#Task 1:
#Write a shell file to check whether a file is available or not in a specific path

#Output: The <FileName> is available in <Path>

#!/bin/bash

# shell to check the whether the file in the location or not 


FileName="Jagapathi_Bio.txt"
path="/mnt/c/Users/babuj/OneDrive/Desktop/Shell preparation"

if [-f "$path/$FileName"];then
    echo"The $FileName is  available in the $path"
    else 
    echo "The $FileName is not available in the $path"
    fi