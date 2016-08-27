#!/bin/bash

#p1: condition
#p2: message to print
true_or_warn() {
local condition=$1
local msg=$2
if [ $condition -eq 0 ]; then
  echo "$msg"
fi

}


#p1: condition
#p2: message to print
true_or_die() {
local condition=$1
local msg=$2

if [ $condition -eq 0 ]; then
  echo "$msg"
  exit
fi
}

### End of Script ###
