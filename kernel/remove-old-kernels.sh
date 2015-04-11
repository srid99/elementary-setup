#!/bin/sh

#########################################################################################
# Remove all old kernels except the current and last old kernel for fallback purpose
#########################################################################################

# Get all old kernels except the current
oldkernels=( $(dpkg -l 'linux-image-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d') )

remove_cmd='sudo apt-get purge'

# Construct the remove command with the old kernels except the last one
for (( i=0; i<((${#oldkernels[@]})-1); i++ ));
do
 kernel=${oldkernels[i]};
 remove_cmd="${remove_cmd} ${kernel}"
done

# Remove the old kernels
$remove_cmd

