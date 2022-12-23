#!/bin/bash

# Program that counts down to zero from a given argument

# Run the file using sleep (non built-in command)

# To access non built-in command, use help - ls / - ls /bin - man sleep

: '
Note:
  ./countdown.sh <argument>
  sleep <number>
  '

echo -e "\n~~ Countdown Timer ~~\n"

if [[ $1 -gt 0 ]]
then
: '
  for (( i = $1; i >= 0; i-- ))
  do 
    sleep 1
    echo $i
  done
  '
  I=$1
  while [[ $I -ge 0 ]]
  do
    echo $I
    (( I-- ))
    sleep 1
  done
else
  echo Include a positive integer as the first argument.
fi
