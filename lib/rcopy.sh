#!/bin/bash

#p1: user account
#p2: user password
#p3: remote host
#p4: local path
#p5: remote path
copy_to_remote() {
local user=$1
local passwd=$2
local rhost=$3
local lpath=$4
local rpath=$5
#echo "sshpass -p $passwd scp  -o StrictHostKeyChecking=no -r $lpath $user@$rhost:$rpath"
sshpass -p $passwd scp  -o StrictHostKeyChecking=no -r $lpath $user@$rhost:$rpath
return $?
}

#p1: user account
#p2: user password
#p3: remote host
#p4: local path
#p5: remote path
copy_from_remote() {
local user=$1
local passwd=$2
local rhost=$3
local lpath=$4
local rpath=$5

sshpass -p $passwd scp -r  -o StrictHostKeyChecking=no $user@$rhost:$rpath $lpath
return $?
}

#p1: user account
#p2: remote host
#p3: local path
#p4: remote path
copy_to_remote_nopass() {
local user=$1
local rhost=$2
local lpath=$3
local rpath=$4

scp -r $lpath $user@$rhost:$rpath
return $?
}

#p1: user account
#p2: remote host
#p3: local path
#p4: remote path
copy_from_remote_nopass() {
local user=$1
local rhost=$2
local lpath=$3
local rpath=$4

scp -r $user@$rhost:$rpath $lpath
return $?
}

### End of Script ###
