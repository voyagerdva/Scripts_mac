#!/bin/bash

rm mtr-report.txt 2>/dev/null
file="testcenters.txt"
IFS=$'\n'
for host in $(cat $file)
do
echo "################ $host ##########################" >> mtr-report.txt
mtr -r -m15 -c5 $host >> mtr-report.txt
echo ""
done
