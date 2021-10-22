#!/bin/bash

file="./IPlist.txt"

for server in $(cat $file)
do
    ping -c3  $server
done
