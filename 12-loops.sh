#!/bin/bash

for i in $@    #all args in $@
do
    yum install $i -y
done