#!/bin/bash

git branch > /tmp/branch.txt
if grep "mainddd" /tmp/branch.txt; then
echo "YES !!!"
else
echo "NO ... "
fi
