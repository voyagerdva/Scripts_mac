#!/bin/bash

function af_enable {
    afctl -n prod $1 $2
}

function af_disable {
    afctl -n prod $1 $2
}

function af_get {
    afctl -n prod get node-maintenance
}

case $1 in
    enable)
    node=$2
    af_enable enable $node
    ;;

    disable)
    node=$2
    af_disable disable $node
        ;;

    get)
    afctl -n prod get node-maintenance
    ;;

    *)
    echo "ERRORRRRR !!!!!"
    ;;
esac
