#!/bin/bash

#python3 /Users/zhuk/myscripts/qqTC/createListNodes.py


function find_IP_by_name {
#    cd ~/myscripts/findNodeOrIP

    python3 ./createList.py

    cat /tmp/serverList.txt | grep -Eo "[a-z0-9]{2,3}-[a-z]{2,9}-[a-z0-9]{2,3}-[a-z]{2,3}-pr-[p,v]-[0-9]{1,2}"|sort|uniq > /tmp/serverSort.txt
    cat /tmp/serverSort.txt

    cd /Users/zhuk/SIBEDGE/PROJECT/
    rm -rf ./ansible-inventory 2>/dev/null && git clone git@github.com:AnchorFreePartner/ansible-inventory.git
    cd ansible-inventory

    file="/tmp/serverSort.txt"
    for IP in $(cat $file)
    do
        grep -riwn -A1 $IP ./inventory
    done

    echo ${FUNCNAME[0]}
}


function find_name_by_IP {
    cd ~/myscripts/findNodeForKaspersky
    python3 ./createList.py

    cat /tmp/serverList.txt | grep -Eo "[0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}[.][0-9]{1,3}"|sort|uniq > /tmp/serverSort.txt
    cat /tmp/serverSort.txt
    echo ""

    cd /Users/zhuk/SIBEDGE/PROJECT/
    rm -rf ./ansible-inventory 2>/dev/null && git clone git@github.com:AnchorFreePartner/ansible-inventory.git
    cd ansible-inventory

    file="/tmp/serverSort.txt"
    for IP in $(cat $file)
    do
        grep -riwn -B1 $IP ./inventory
    done
#    echo ${FUNCNAME[0]}
}


function Welcome {
    echo "What do you want to find:
            IP by name - press '1'
            name by IP - press '2'
            exit - press "0" ?"
    read N
}

pwd
cd ~/myscripts/findNodeOrIP
pwd
Welcome

case $N in
    1)
    find_IP_by_name
    ;;


    2)
    find_name_by_IP
    ;;

    *)
    exit 0
    ;;
esac
