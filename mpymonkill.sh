#!/bin/bash
clear
read -p 'Please, enter the node name: ' nodename
# Here is the check of node name
if [[ $nodename =~  ^[a-z]{1,3}\-[a-z]{1,9}\-[a-z]{1,2}\-[a-z]{1,3}\-[a-z]{1,2}\-[p,v]\-[0-9]{1,2}$ || $nodename =~ ^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3} ]]; then
  echo "This name is valid"
  # The status of python-monitoring container
  ssh k.zhuravlev@$nodename.northghost.com docker ps -f NAME=python-monitoring
  echo "Do you want to kill it?: (Y/N)?"
    while read -r -n 1 -s answer; do
       if [[ $answer = [YyNn] ]]; then
          if [[ $answer = [Yy] ]]; then
            id=$(ssh k.zhuravlev@$nodename.northghost.com docker ps -f NAME=python-monitoring -q)
            process=$(ssh k.zhuravlev@$nodename.northghost.com ps aux | grep $id | grep -v grep | awk '{print $2}')
            ssh k.zhuravlev@$nodename.northghost.com sudo kill -9 $process
            sleep 5s
             # The new status of python-monitoring container
            ssh k.zhuravlev@$nodename.northghost.com docker ps -f NAME=python-monitoring
            break
          elif [[ $answer = [Nn] ]]; then
            exit
          fi
        else
          printf "Wrong answer, try again\n"
          exit
        fi
    done
  else
    echo "This is not valid node name"
    exit
fi
