#!/bin/bash

file="list.txt"
for server in $(cat $file)
do
    ssh k.zhuravlev@$server.northghost.com uname -n
    ssh k.zhuravlev@$server.northghost.com docker ps |grep threatstack2
done
