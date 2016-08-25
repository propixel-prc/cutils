#!/bin/bash

#no parameter
key_gen() {
#ssh-keygen -t rsa
rm -f ~/.ssh/id_rsa
ssh-keygen -f ~/.ssh/id_rsa -q -N ""
}

#p1: target IPs to broadcast
key_broadcast() {
local nodes=$1
local user=$2
local upd=$3

for node in $nodes
do
#  echo "Copying from `get_local_ip em0` to $node"
  #distribute ID to ssh node
  echo "sshpass -p $upd ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa $user@$node"
  sshpass -p $upd ssh-copy-id -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa $user@$node

  #skip yes/no option for ssh node
  sshpass -p $upd ssh -o StrictHostKeyChecking=no $user@$node ls /home </dev/null
done
}

