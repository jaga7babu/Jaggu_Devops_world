#Assignment:
#Task 1: For loop: Create a directory and Write a shell script file to print all the .py, .java and .txt files available in custom directory path
#Task 2: For loop: Write a shell file to Print Even Numbers from 2 to 20
#Task 3: While loop: Write a shell file to Monitor CPU Usage in Real-Time


# AUthor :Karri jagapathi babu  
# Task 1: For loop: Create a directory and Write a shell script file to print all the .py, .java and .txt files available in custom directory path


#!/bin/bash
# Create a directory if it doesn't exist
directory="/mnt/c/Users/babuj/OneDrive/Desktop/Shell preparation/files"
mkdir -p "$directory"
# Create some sample files for demonstration
touch "$directory/sample1.py"
touch "$directory/sample2.java"
touch "$directory/sample3.txt"
# Print all .py, .java, and .txt files in the directory
echo "Files in $directory:"
for file in "$directory"/*.{py,java,txt}; do
    if [ -e "$file" ]; then
        echo "$(basename "$file")"
    fi
done

#Task 2: For loop: Write a shell file to Print Even Numbers from 2 to 20
#!/bin/bash
# Print even numbers from 2 to 20
# echo "Even numbers from 2 to 20:"
# for ((i=2; i<=20; i+=2)); do
#     echo "$i"
# done

#Task 3: While loop: Write a shell file to Monitor CPU Usage in Real-Time
#!/bin/bash
# Monitor CPU usage in real-time
echo "Monitoring CPU usage in real-time. Press Ctrl+C to stop."

while true; do
    # Get CPU usage and display it
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "CPU Usage: $cpu_usage%"
    sleep 1  # Update every second
done
# Note: To stop the CPU monitoring script, you can press Ctrl+C in the terminal.
# Make sure to give execute permission to the scripts before running them:
# chmod +x Shell_loops_5.sh
# chmod +x Shell_loops_5.sh


#Task 2: For loop: Write a shell file to Print Even Numbers from 2 to 20
#!/bin/bash
Print even numbers from 2 to 20
echo "Even numbers from 2 to 20:"
for ((i=2; i<=20; i+=2)); do
    echo "$i"
done