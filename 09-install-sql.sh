#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error :: please run this script with root access"
    exit 1
fi

yum install git -y

if [ $? -ne 0 ]
then
    echo " Installation of git is error"
    exit 1
else
    echo " Installation is success"
fi