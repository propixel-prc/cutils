#!/bin/bash

fmul()
{
local num1=$1
local num2=$2
local result=`echo ""|awk -v num1=$num1 -v num2=$num2 '{printf "%.4f", num1*num2}'`
echo "$result"
}

fdiv()
{
local numerator=$1
local denominator=$2
local result=`echo ""|awk -v numerator=$numerator -v denominator=$denominator '{printf "%.4f", numerator/denominator}'`
echo "$result"
}

