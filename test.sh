#!/bin/bash
IN=192.168.0.52,192.168.0.52
ips=$(echo $IN | tr "," "\n")
read varname
for i in $ips
do
echo $i
sshpass -p 'root' ssh root@$i $varname
done
