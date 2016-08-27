#!/bin/bash
cdir=`echo \`dirname $0\`|awk -v pwd=\`pwd\` '{if($0 ~ /^\//) {print $0} else {print pwd "/" $0}}'`
cutils_dir=$cdir/../..
source $cutils_dir/bin/utils/common.sh


###main entry
while read node
do
rcmd `user` `upd` $node "$cutils_dir/bin/utils/sshkey_broadcast.sh"
done  < `nodes`
###end of main


### End of Script ###
