# This hook is neccesary for automatic updating of the cfg-update index, please do not modify it!
pre_pkg_setup() {
	[[ $ROOT = / ]] && cfg-update --index
}
#################https://github.com/spreequalle/gentoo-binhost#### uploader ####
if [[ ${EBUILD_PHASE} == 'postinst' ]]; then
  # FIXME come up with a more sophisticated approach to detect if binary package build is actually requested
  # commandline args like -B or --buildpkg-exclude and other conditionals are not supported right now.
  grep -q 'buildpkg' <<< {$PORTAGE_FEATURES}
  if [ $? -eq 0 ]; then
    /etc/portage/binhost/gh-upload.py
  fi
fi