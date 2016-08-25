#!/bin/bash

#execute command as user
#p1: user account
#p2: user password
#p3: remote node IP
#p4: command
#p5: parameters
rcmd() {
local user="$1"
local passwd="$2"
local host="$3"
local cmd="$4"
local params="$5"
#echo "remote_cmd: cmd=$cmd params=$params"
sshpass -p $passwd ssh $user@$host "$cmd $params" </dev/null
}


#execute command as user
#p1: user account
#p2: remote node IP
#p3: command
#p4: parameters
rcmd_nopass() {
local user="$1"
local host="$2"
local cmd="$3"
local params="$4"

#echo "remote_cmd: cmd=$cmd params=$params"
ssh $user@$host "$cmd $params"
}

