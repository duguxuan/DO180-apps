#!/bin/bash -x
subscription-manager repos --enable $1
package_list=$(repoquery --available --quiet --all --repoid=$1)
for pck in $package_list
do 
 echo $pck >> $1
done
ls $1
shuf -n 1 $1 | xargs yum install -y --skip-broken
