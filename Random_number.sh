# Create a Shell Script That Generates Random Numbers

#/bin/bash
# Generate a random number between 1  and  100  

random_number=$((Random % 100 +1))
echo "Random number generated: $random_number"
# Check if the random number is even or odd
if (( random_number % 2 == 0 )); then
    echo "The random number $random_number is even."
else
    echo "The random number $random_number is odd."
fi
# Check if the random number is prime
is_prime=true
for ((i=2; i*i<=random_number; i++)); do
    if (( random_number % i == 0 )); then
        is_prime=false
        break
    fi
done
if $is_prime && (( random_number > 1 )); then
    echo "The random number $random_number is prime."
else
    echo "The random number $random_number is not prime."
fi

