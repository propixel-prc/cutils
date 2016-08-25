#!/bin/bash
cdir=`echo \`dirname $0\`|awk -v pwd=\`pwd\` '{if($0 ~ /^\//) {print $0} else {print pwd "/" $0}}'`
cutils_dir=$cdir/../..
source $cutils_dir/bin/utils/common.sh

deploy_dir=$1

###main entry
while read node
do
#echo $node
is_local_ip $node
if [ $? -eq 0 ]; then
copy_to_remote `user` `upd` $node $deploy_dir $deploy_dir
fi

done  < `nodes`

###end of main
