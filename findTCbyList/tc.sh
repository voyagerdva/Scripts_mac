#!/bin/bash

#python3 /Users/zhuk/myscripts/qqTC/createListNodes.py
cd ~/myscripts/findTCbyList

python3 ./createNodeList.py

cat /tmp/nodeList.txt | grep -Eo "[a-z0-9]{2,3}-[a-z]{2,9}-[a-z0-9]{2,3}-[a-z]{2,3}-pr-[p,v]-[0-9]{1,2}"|sort|uniq > /tmp/nodes_sort.txt
cat /tmp/nodes_sort.txt

cd /Users/zhuk/SIBEDGE/PROJECT/
rm -rf ./static-vars-testcenters 2>/dev/null && git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git
cd static-vars-testcenters

file="/tmp/nodes_sort.txt"
for server in $(cat $file)
do
    grep -riwn $server .
done


