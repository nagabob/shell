#!/bin/bash

DATE=$(date +%F)
SCRIPTNAME=$0
LOGFILE=/tmp/$SCRIPTNAME-/$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo "Run the script with root access"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$i Installation is $R Failure$N"
    else
        echo -e "$i Installation is $G Success$N"
    fi
}

PACKAGE(){
    if [ $1 -ne 0 ]
    then
        yum install $i -y
    else
        echo -e "$i $G already installed"
    fi
}
for i in $@
do
    yum list installed | grep $i
    PACKAGE $?
    # yum install $i -y
    # #echo $i
    VALIDATE $? $i
done