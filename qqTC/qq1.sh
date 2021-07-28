#!/bin/bash

cd ~/SIBEDGE/PROJECT/  && rm -rf static-vars-testcenters 2>/dev/null
git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git && cd static-vars-testcenters
grep -riwn $1 . && cd -
