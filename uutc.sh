#!/bin/bash

# just fast update repo "static-vars-TC"

cd ~/SIBEDGE/PROJECT/;
rm -rf static-vars-testcenters 2>/dev/null;
git clone git@github.com:AnchorFreePartner/static-vars-testcenters.git
cd ~/SIBEDGE/PROJECT/static-vars-testcenters
