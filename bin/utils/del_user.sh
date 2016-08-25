#!/bin/bash
cdir=`echo \`dirname $0\`|awk -v pwd=\`pwd\` '{if($0 ~ /^\//) {print $0} else {print pwd "/" $0}}'`
cutils_dir=$cdir/../..
source $cutils_dir/bin/utils/common.sh

### Procedures definition
#p1: remote node IP
del_user() {
local node_ip=$1

local root=`root`
local rpd=`rpd`
local user=`user`

rcmd $root $rpd $node_ip "userdel -r $user"
rcmd $root $rpd $node_ip "ls /home"
}

###main entry
while read node
do
#echo $line
del_user $node
done  < `nodes`
###end of main
