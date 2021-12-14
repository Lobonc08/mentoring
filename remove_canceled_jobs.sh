#!/bin/bash
# shell script to remove the canceled jobs

for i in `tower-cli job list --status canceled -a |awk 'NR>3 {print $1}' |head -n -1`
do
  echo job ID $i ;
  echo ----------------;
  tower-cli job delete --status canceled $i
done