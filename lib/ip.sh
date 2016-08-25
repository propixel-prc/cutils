#!/bin/bash

#p1:the IP to be checked
is_local_ip() {
local ip=$1
local local_ips=`ifconfig|grep "inet "|awk '{print $2}'|awk -F":" '{print $2}'`
#echo $local_ips
local found=`echo $local_ips|grep "$ip"`

if [ -z "$found" ]; then
return 0
else
return 1
fi
}


#The interface for which to get IP
get_local_ip() {
local interface=$1
local ip=`ifconfig $interface|grep "inet "|awk '{print $2}'|awk -F":" '{print $2}'`

echo $ip
}



