#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    #$1 --> it will receive the argument1
if [ $1 -ne 0 ]
then
    echo "Installation.... Failure"
    exit 1
else
    echo "Installation.... success"
fi
}

if [ $USERID -ne 0 ]
then
    echo "Error :: please run this script with root access"
    exit 1
fi

yum install git -y

VALIDATE $?
