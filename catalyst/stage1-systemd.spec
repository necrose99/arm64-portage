subarch: arm64
target: stage1
version_stamp: latest
rel_type: default
profile: default/linux/arm64/17.0/desktop/systemd
snapshot: latest
source_subpath: default/stage3-arm64-latest
pkgcache_path: /var/tmp/catalyst/packages/stage1
update_seed: yes
update_seed_command: --update --deep --jobs=5 --newuse --complete-graph @world
portage_confdir: @REPO_DIR@/releases/weekly/portage/stages
