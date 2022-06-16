#!/bin/bash


if [[ $(id -u) -ne 0 ]] ; then echo "Please run with sudo" ; exit 1 ; fi


create() {
  ip link add br_mgmt type bridge
  ip link set br_mgmt up
  ip link add br_s1l1 type bridge
  ip link set br_s1l1 up
  ip link add br_s1l2 type bridge
  ip link set br_s1l2 up
  ip link add br_s2l1 type bridge
  ip link set br_s2l1 up
  ip link add br_s2l2 type bridge
  ip link set br_s2l2 up
}


delete() {
  ip link delete br_mgmt type bridge
  ip link delete br_s1l1 type bridge
  ip link delete br_s1l2 type bridge
  ip link delete br_s2l1 type bridge
  ip link delete br_s2l2 type bridge
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