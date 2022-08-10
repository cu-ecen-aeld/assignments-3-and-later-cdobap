#!/bin/sh

if [ $# -lt 2 ]; then
       echo "need 2 parameters"
       exit 1
fi      

path=`dirname $1`
mkdir -p $path
echo $2 > $1 

if [ $? -ne 0 ]; then
    echo "the file could not be created"
    exit 1
fi