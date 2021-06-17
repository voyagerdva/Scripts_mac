import os
import sys
import re

print("Enter the name of new task. Press CTRL+D for finish and apply:")
textList = re.split(r'[/, |, \n, ;, :, ., \,]', sys.stdin.read())
print(textList)
nameDir = "_".join(textList)
print("The name of new directory is: ", nameDir)

pathFull = f"/Users/zhuk/SIBEDGE/PROJECT/{nameDir}"
os.mkdir(pathFull)

file1 = f"{textList[0]}_NEW.yml"
file2 = f"{textList[0]}_Draft.yml"

print("file1 = ", file1)
print("file2 = ", file2)

print("path1 = ", f"{pathFull}/{file1}")
print("path2 = ", f"{pathFull}/{file2}")

with open(f"{pathFull}/{file1}", "w") as f:
    f.write("")
    
with open(f"{pathFull}/{file2}", "w") as f:
    f.write("")

#####
