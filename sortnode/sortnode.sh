#!/bin/bash

echo "Enter the of Nodes names list"
python3 ./createList.py

cat /tmp/serverList.txt | grep -Eo "[a-z0-9]{2,3}-[a-z]{2,9}-[a-z0-9]{2,3}-[a-z]{2,3}-pr-[p,v]-[0-9]{1,2}"|sort|uniq > /tmp/serverSort.txt
cat /tmp/serverSort.txt
echo ""
