#!/bin/bash
cd $1

source ../lib/ip.sh

ip=`get_local_ip em0`
echo "Hello, $ip!" >hello.txt
### End of Script ###
