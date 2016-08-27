#!/bin/bash

source $cutils_dir/lib/ip.sh
source $cutils_dir/lib/rcmd.sh
source $cutils_dir/lib/rcopy.sh
source $cutils_dir/lib/rsync.sh
source $cutils_dir/lib/sshkey.sh

nodes() {
  echo "$cutils_dir/conf/nodes"
}

user() {
  local user=`grep "account" $cutils_dir/conf/user.cfg |gawk -F: '{print $2}'`
  echo $user
}

upd() {
  local upd=`grep "passwd" $cutils_dir/conf/user.cfg |gawk -F: '{print $2}'`
  echo $upd
}

root() {
  local root=`grep "account" $cutils_dir/conf/root.cfg |gawk -F: '{print $2}'`
  echo $root
}

rpd() {
  local rpd=`grep "passwd" $cutils_dir/conf/root.cfg |gawk -F: '{print $2}'`
  echo $rpd
}

conf_dir() {
echo "$cutils_dir/conf"
}

lib_dir() {
  echo "$cutils_dir/lib"
}

der_path() {
  $cutils_path/der
}

### End of Script ###
