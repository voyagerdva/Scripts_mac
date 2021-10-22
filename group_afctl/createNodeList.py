import os
import sys
import re

print("Enter the list of nodes you want to DISABLE ot ENABLE. Press Enter for finish and CTRL+D for apply:")
nodeList = sys.stdin.read()

print("\n============== 1 =======================")
print(nodeList)

fileNodes = "/tmp/nodeList.txt"

print("\n============== 2 =======================")
print("fileNodes = ", fileNodes)

with open(f"{fileNodes}", "w") as f:
    f.write(nodeList)
