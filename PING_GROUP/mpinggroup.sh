#!/bin/bash

file="./nodeList.txt"

for server in $(cat $file)
do
    ping -c3  $server.northghost.com
done
