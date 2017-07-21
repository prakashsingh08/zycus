#!/bin/bash
IN=$1
ips=$(echo $IN | tr "," "\n")
read varname
for i in $ips
do
echo $i
ssh root@$i $varname
done
