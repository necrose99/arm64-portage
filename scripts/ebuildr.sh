#!/bin/sh
#ebuildr
# builds world binaries when posible but dose not yet merge them..  thus if an emerge went bad it wont break system and or updates will go faster. 
### over ssh or etc the link can die added with nohup and vola'
## nohup /usr/local/bin/ebuildr
LIST=$(mktemp);

emerge -puDN --color=n --columns --quiet=y world | awk '{print $2}' > ${LIST};

for PACKAGE in $(cat ${LIST});
do
  printf "Building binary package for ${PACKAGE}... "
  emerge -uN --quiet-build --quiet=y --buildpkgonly ${PACKAGE};
  if [[ $? -eq 0 ]];
  then
    echo "ok";
  else
    echo "failed";
  fi
done
