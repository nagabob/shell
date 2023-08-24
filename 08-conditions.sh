#!/bin/bash

echo "enter a number"

read NUMBER

if [ $NUMBER -gt 10 ]
then
    echo "$NUMBER is greater than 10"
else
    echo "$NUMBER is not greater than 10"
fi