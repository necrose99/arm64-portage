#!/bin/bash
## arm64 blend.. ~Necrose99
## https://github.com/Sabayon/docker-armhfp/tree/master/base-armhfp/script


mkdir -p /var/lib/entropy/client/database/arm64
## hackish way of taking care of make.conf aarch64-unkown-gnu-linux metadata snafu's 
ln -s /var/lib/entropy/client/database/arm64 /var/lib/entropy/client/database/aarch64 
ln -s /var/lib/entropy/client/database/arm64 /var/lib/entropy/client/database/UNKOWN
## snaf-fools addressed 
cp /etc/portage/scripts/equo-arm64.sql /var/lib/entropy/client/database/arm64/equo.sql

cd /var/lib/entropy/client/database/arm64

cat /var/lib/entropy/client/database/arm64/equo.sql | sqlite3 equo.db


# /etc/portage/scripts/  for experamental and util reasons. keep... on localhost .. 
# remove files used to generate a correct equo db

#rm -rfv /equo.sql

# rm -rfv /generate-equo-db.sh