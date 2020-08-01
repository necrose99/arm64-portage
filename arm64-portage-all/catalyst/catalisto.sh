#bin/bash 
dt=$(date '+%d/%m/%Y %H:%M');
echo "$dt"
my_date="$dt"
 
# snap portage 
catalyst -C target=snapshot version_stamp=$my_date
 
 
catalyst -f stage1.spec && catalyst -f stage2-systemd.spec && catalyst -f stage3-systemd.spec && catalyst -f stage4-systemd.spec
 
catalyst -f stage1.spec && catalyst -f stage2.spec && catalyst -f stage3.spec 
 
catalyst -f stage1.spec && catalyst -f stage2-systemd.spec && catalyst -f stage3-systemd.spec && catalyst -f  stage4-cloud.spec