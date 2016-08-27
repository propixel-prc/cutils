#!/bin/bash
cdir=`echo \`dirname $0\`|awk -v pwd=\`pwd\` '{if($0 ~ /^\//) {print $0} else {print pwd "/" $0}}'`
cutils_dir=$cdir/../..
source $cutils_dir/bin/utils/common.sh

###main entry
node_list=`cat \`nodes\`|awk '{printf $1" "}'`
#echo $nodes

key_gen
key_broadcast "$node_list" `user` `upd`
###end of main

### End of Script ###
