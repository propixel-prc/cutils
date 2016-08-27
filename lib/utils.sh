#!/bin/bash
sanity_check_file_exist() {
local file=$1
local user=$2
local host=S3

ssh $user@$host ls $file
return $?
}

sanity_check_host_accessible() {
local user=$1
local host=$2

ssh $user@$host ls ~
return $?
}

### End of Script ###
