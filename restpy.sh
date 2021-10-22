#!/bin/bash

ssh k.zhuravlev@$1.northghost.com docker ps |grep python-monitoring
ssh k.zhuravlev@$1.northghost.com docker restart python-monitoring
ssh k.zhuravlev@$1.northghost.com sleep 5
ssh k.zhuravlev@$1.northghost.com docker ps |grep python-monitoring
