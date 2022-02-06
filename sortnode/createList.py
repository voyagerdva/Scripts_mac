import os
import sys
import re

print("Press Enter for finish and CTRL+D for apply:")
serverList = sys.stdin.read()

print("\n============== Исходный список: =======================")
print(serverList)

fileServerList = "/tmp/serverList.txt"

print("\n============== Список адресов, которые мы ищем: =======================")
print(f"создан файл {fileServerList}\n")

with open(f"{fileServerList}", "w") as f:
    f.write(serverList)
