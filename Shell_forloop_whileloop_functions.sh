#Assignment
##1. Conditional Statements
#Write a script that:
#Takes a number as input.
#Checks if the number is even or odd.
#Displays the result.

#2. Command Line Arguments
##Write a script that:
#Takes three numbers as command line arguments.
#Displays the largest number among them.

#3. Functions
#Write a script that:
#Defines a function to calculate the factorial of a number.
#Takes a number as input and displays its factorial.

#!/bin/bash
# 1. Conditional Statements: Check if a number is even or odd
read -p "Enter a number: " number
if (( number % 2 == 0 )); then
    echo "The number $number is even."
else
    echo "The number $number is odd."
fi
# 2. Command Line Arguments: Find the largest of three numbers
if [ $# -ne 3 ]; then
    echo "Please provide exactly three numbers as arguments."
    exit 1
fi
num1=$1
num2=$2
num3=$3
if (( num1 >= num2 && num1 >= num3 )); then
    largest=$num1
elif (( num2 >= num1 && num2 >= num3 )); then
    largest=$num2
else
    largest=$num3
fi
echo "The largest number among $num1, $num2, and $num3 is $largest."
# 3. Functions: Calculate the factorial of a number
factorial() {
    local num=$1
    local result=1
    for (( i=1; i<=num; i++ )); do
        result=$((result * i))
    done
    echo $result
}
read -p "Enter a number to calculate its factorial: " fact_num
fact_result=$(factorial $fact_num)
echo "The factorial of $fact_num is $fact_result."
# Note: Make sure to give execute permission to the script before running it: