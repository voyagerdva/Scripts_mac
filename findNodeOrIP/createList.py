import os
import sys
import re

print("Enter the list of IPs from Kaspers mail. Press Enter for finish and CTRL+D for apply:")
serverList = sys.stdin.read()

print("\n============== Исходный список: =======================")
print(serverList)

fileServerList = "/tmp/serverList.txt"

print("\n============== Список адресов, которые мы ищем: =======================")
print(f"fileServerList = {fileServerList}")

with open(f"{fileServerList}", "w") as f:
    f.write(serverList)
