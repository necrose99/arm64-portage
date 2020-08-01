### https://github.com/sakaki-/gentoo-on-rpi3-64bit and or Rock64 boards combined. 

####This is the configs via git and /etc/portage 

###ETC/kernels is a symlink pointing to /etc/portage/kerenls , normally its just /etc/kerenls 
but by making it symlinked   I can keep traking kernel configs also... 
also make for removal of long dead blocks or unblcoks for backages portage now will gripe over. 
makes for easier sharing of kernel configs.. as they work or not.. 

cd /etc/portage  git clone 

###mv .git and files from /etc/portage/portage to /etc/portage  & rmdir /etc/portage/portage and 

or force git clone 
#### via git clone https://github.com/necrose99/arm64-portage.git /etc/portage 
