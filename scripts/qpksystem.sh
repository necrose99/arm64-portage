#/bin/bash 
#https://gentoo-user.gentoo.narkive.com/XsKNePuh/system-backup-with-quickpkg
 
find /var/db/pkg/ -type d -mindepth 2 -exec quickpkg {} \;
