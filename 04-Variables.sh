#!/bin/bash

# This programm for addition of 2 numbers and take input from the user.
NUMBER1= $1
NUMBER2= $2

#I need to run a command inside the shell to add there 2 numbers

sum=$(($NUMBER1)+($NUMBER2))

echo "Addition of 2 numbers is $sum"



