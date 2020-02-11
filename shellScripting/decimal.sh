#!/bin/sh/ -x
num=7
a=$(echo "$num" | awk '{print $1/2}')
echo $a
