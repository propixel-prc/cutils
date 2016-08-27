#!/bin/bash

#p1: user account
#p2: user password
#p3: remote host
#p4: local path
#p5: remote path
sync_to_remote() {
local user=$1
local passwd=$2
local host=$3
local lpath=$4
local rpath=$5

sshpass -p $passwd rsync -r $lpath $user@$host:$rpath
return $?
}

#p1: user account
#p2: user password
#p3: remote host
#p4: local path
#p5: remote path
sync_from_remote() {
local user=$1
local passwd=$2
local host=$3
local lpath=$4
local rpath=$5

sshpass -p $passwd rsync -r $user@$host:$rpath $lpath
return $?
}


#p1: user account
#p2: remote host
#p3: local path
#p4: remote path
sync_to_remote_nopass() {
local user=$1
local rhost=$2
local lpath=$3
local rpath=$4

rsync -r $lpath $user@$host:$rpath
return $?
}

#p1: user account
#p2: remote host
#p3: local path
#p4: remote path
sync_from_remote_nopass() {
local user=$1
local rhost=$2
local lpath=$3
local rpath=$4

rsync -r $user@$host:$rpath $lpath
return $?
}

### End of Script ###
