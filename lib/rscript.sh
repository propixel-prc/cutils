#!/bin/bash

#execute command as user
#p1: user account
#p2: user password
#p3: remote node IP
#p4: script
#p5: parameters
rscript() {
local user="$1"
local passwd="$2"
local host="$3"
local script="$4"
local params="$5"
#echo "remote_cmd: cmd=$cmd params=$params"
sshpass -p $passwd ssh $user@$node_ip "$cmd $params" </dev/null
}


#execute command as user
#p1: user account
#p2: remote node IP
#p3: script
#p4: parameters
rscript_nopass() {
local user="$1"
local host="$2"
local script="$3"
local params="$4"

#echo "remote_cmd: cmd=$cmd params=$params"
ssh $user@$host "$cmd $params"
}

