#!/bin/bash

cd /Users/zhuk/myscripts/group_afctl

# read list from dashboard and write it into /tmp/nodeList.txt:
python3 ./createNodeList.py

# read /tmp/nodeList.txt and takes ONLY NODES NAMES from it. And write correct list into other file /tmp/nodeList2.txt:
grep -Eo "[a-z0-9]{2,3}-[a-z]{1,9}-[a-z0-9]{2,3}-[a-z]{2,3}-pr-[p,v]-[0-9]{1,2}" /tmp/nodeList.txt|sort|uniq > /tmp/nodeList2.txt
cat /tmp/nodeList2.txt
echo ""
echo "================== 3 ========================"

# performance afctl's operations by circle FOR on list from /tmp/nodeList2.txt:
file="/tmp/nodeList2.txt"
for node in $(cat $file)
do
echo " $node"
afctl -n prod $1 $node
done
