import os
import sys
import re

print("Enter the list of nodes you want to find TC for. Press CTRL+D for finish and apply:")
nodesList = sys.stdin.read()
print(nodesList)

fileNodes = "/tmp/nodesList.txt"

print("fileNodes = ", fileNodes)

with open(f"{fileNodes}", "w") as f:
    f.write(nodesList)