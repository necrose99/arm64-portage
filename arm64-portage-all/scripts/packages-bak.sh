#!/bin/bash
now=`date +"%m_%d_%Y"`
tar -cf - /usr/portage/packages/ | (pv -s $(du -sb /usr/portage/packages/ | awk '{print $1}') -p --timer --rate --bytes > /packages-$now.tar)
xz -9ev --threads=8 /packages-$now.tar
