#!/bin/bash


if [[ $(id -u) -ne 0 ]] ; then echo "Please run with sudo" ; exit 1 ; fi


create() {
  virsh create mgmt_node/ubuntu.xml
  virsh create leaf1/sonic.xml
  virsh create leaf2/sonic.xml
  virsh create spine1/sonic.xml
  virsh create spine2/sonic.xml
}


delete() {
  virsh destroy sonic-mgmt
  virsh destroy leaf1
  virsh destroy leaf2
  virsh destroy spine1
  virsh destroy spine2
}

while getopts "cd" ARGS;
do
    case $ARGS in
    c )
        create
        exit 1;;
    d )
        delete
        exit 1;;
    esac
done