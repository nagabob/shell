#!/bin/bash

DATE=$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-/$DATE.log
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run the script with root access"
    exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$i Installation is success"
    else
        echo "$i Installation is failure"
    fi
}
for i in $@
do
    yum install $i -y
    echo $i
    VALIDATE $? "Test"
done