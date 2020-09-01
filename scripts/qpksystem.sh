#/bin/bash 
#https://gentoo-user.gentoo.narkive.com/XsKNePuh/system-backup-with-quickpkg
## runs quickpkg against any and all installed pkgs..  ie @system/world might perhaps miss...  due to meta pkgs.. 
 
find /var/db/pkg/ -type d -mindepth 2 -exec quickpkg {} \;
