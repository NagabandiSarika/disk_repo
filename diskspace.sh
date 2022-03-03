#!/bin/sh
df -H | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{ print $5 " " $1 }' | while read output;
do
echo $output
usep=$(echo $output | awk '{ print $1}' | cut -d'%' -f1 )
partition=$(echo $output | awk '{ print $2 }' )
if [ $usep -ge 40 ]; then
echo "Running out of 40 percentage space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
mail -s "Alert: Almost out of 40 percentage disk space $usep%" sarika.n2499@gmail.com
elif [ $usep -ge 60 ]; then
echo "Running out of 80 percentage space \"$partition ($usep%)\" on $(hostname) as on $(date)" |
mail -s "Alert: Almost out of 81 percentage disk space $usep%" sarika.n2499@gmail.com
fi
done
