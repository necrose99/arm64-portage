#!/bin/bash
#
# backup Gentoo RPi3 64 Necrose99
#
#  if portage has lots of packages it will bloat the backup. , Swapfile will crash the backup.
# can use the script to dump fs also for docker.

touch  /tmp/fake-swap1
# add a fake swapfile to transform ,  tar transform can move the file  to /var/cache/swap/swap1  in the archive...

tar -cvJf /backup.tar.xz --exclude=/var/cache/swap/swap1 --exclude=/var/tmp/portage/*  --exclude=/backup.tar.xz --one-file-system /

#--exclude=/usr/portage/*  --exclude=/backup.tar.xz --one-file-system /
# add --exclude=/usr/portage/  to not include ebuilds or ./packages/  repo inside if lots of bins

## Add Transform   an not very well/or (un)-documented feature  in tar. had to pry it out over email  bug... gnu tar.....  via devs...

## Clean fake swap from local box.
rm  /tmp/fake-swap1
