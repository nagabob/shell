#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)

VALIDATE(){
    #$1 --> it will receive the argument1
if [ $1 -ne 0 ]
then
    echo "$2 Installation.... Failure"
    exit 1
else
    echo "$2 Installation.... success"
fi
}

if [ $USERID -ne 0 ]
then
    echo "Error :: please run this script with root access"
    exit 1
fi

yum install git -y &>>$LOGFILE

VALIDATE $? "git"
