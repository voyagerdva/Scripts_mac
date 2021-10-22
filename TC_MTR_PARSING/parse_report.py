import os

os.system("rm -rf ./TC 2>/dev/null")
os.system("mkdir TC")

def createTestcentersList(reportFile):
    with open(reportFile, "r") as f:
        for line in f.readlines():
            if "################" in line:
                path = "./TC/"
                IP = line.split("#")[16].split(" ")[1]
                testcenter = path + IP + ".txt"

                with open(testcenter, "w") as TC1:
                    TC1.write(line)
                continue

            with open(testcenter, "a") as TC1:
                TC1.write(line)

def testcentersList():
    os.chdir(path="./TC")
    TC = os.listdir(path=".")
    return TC

####################################################################

reportFile = "mtr-report.txt"
createTestcentersList(reportFile)

TC = testcentersList()
print(TC)


for item in TC:
    size = 0

    with open(item, "r") as f:
        max = len(f.readlines())
        print(f.readlines())
        for line in f.readlines():
            print(line)