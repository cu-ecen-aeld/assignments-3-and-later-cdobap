#!/bin/sh

c=0
l=0

if [ $# -eq 0 ]; then
       echo "no parameters"
       exit 1
fi      

parse_dir(){
if [ -d $1 ]; then
    for i in $1/*; do
        if [ -f $i ]; then
            c=$((c + 1))
            tmp=`grep $2 $i | wc -l`
            l=$((l+tmp))          
        else
            parse_dir $i $2
        fi
    done
else
    echo "first parameter is not a directory"
    exit 1
fi
}

parse_dir $1 $2

echo "The number of files are $c and the number of matching lines are $l"
