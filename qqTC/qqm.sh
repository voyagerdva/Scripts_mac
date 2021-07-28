#!/bin/bash

#read -p "Please, type list of the lost nodes: " list

#echo $list > /Users/zhuk/myscripts/qqTC/nodes.txt

cat nodes.txt |egrep -v "ipsec|hydra|ovpn"|sort|uniq > nodes_sort.txt
cat nodes_sort.txt
cd /Users/zhuk/SIBEDGE/PROJECT/
rm -rf ./static-vars-testcenters 2>/dev/null && git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git
cd static-vars-testcenters

file="/Users/zhuk/myscripts/qqTC/nodes_sort.txt"
for server in $(cat $file)
do
    grep -riwn $server .
done


