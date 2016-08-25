#!/bin/bash
cdir=`echo \`dirname $0\`|awk -v pwd=\`pwd\` '{if($0 ~ /^\//) {print $0} else {print pwd "/" $0}}'`
cutils_dir=$cdir/../..
source $cutils_dir/bin/utils/common.sh

### Procedures Define
#p1: remote node IP
add_user() {
local node_ip=$1
local root=`root`
local rpd=`rpd`
local user=`user`
local upd=`upd`

rcmd $root $rpd $node_ip "adduser --disabled-password --gecos \"\" $user"
rcmd $root $rpd $node_ip "mkdir -p /tmp"
rcmd $root $rpd $node_ip "echo \"$user:$upd\"|chpasswd"
rcmd $root $rpd $node_ip "adduser $user sudo"
rcmd $root $rpd $node_ip "ls /home"
}


###main entry
while read node
do
#echo $line
add_user $node
done  < `nodes`
###end of main
