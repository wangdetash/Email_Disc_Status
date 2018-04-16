#!/bin/bash
#The above directs the script to interpretation location

# viewing environment variables
echo "The value of the home variable is: "
echo $HOME # $HOME is a predefined variable

# issue a command
echo "The output of the pwd command is: "
pwd

# that's boring, grab output and make it readable
echo "The value of the pwd command is $(pwd)" #grabs the output of command before it goes to standard output

# assign command output to a variable
output=$(pwd)         #assign the output to a variable
echo "The value of the output variable is ${output}" #accessing the variable

# view data on the command line
echo "I saw $@ on the command line" # $@ is a variable that contains everything that is entered after name of script

# read data from the user
echo "Enter a value: "
read userInput
echo "You just entered $userInput"

# concatenate userinput with command output
echo "Enter a file extension: "
read ext
touch "yourfile.${ext}"

# check to see if a file exists
if [ -d /etc/sysconfig ]; then # -d refers to 'is there'
        echo "That file is there and a directory"
else
        echo "Not there or not a directory"
fi

#for loop
for i in $(seq 10) #seq prints a sequence of numbers upto 10
do
 echo "value : $i"
done

#arithematical operation in bash script
#arithematic operation of integers can only be done on bash script
#arithematic oferation is done inside double paranthesis
if [ $((${1} % 2)) -eq 0 ]; then  
 echo "The number is even"
else
 echo "The number is odd"
fi
