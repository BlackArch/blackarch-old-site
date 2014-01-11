#!/bin/sh

site=blackarch.org
rdir=/nginx/var/www

cd "`dirname "$0"`"

eval $(ssh-agent)
trap "kill $SSH_AGENT_PID" EXIT
ssh-add

# Delete manually or something.
rsync --rsh="ssh -A -l ${USER}" --chmod "a+rX,ug+w" -avz \
  about.html  blackarch  contact.html  css  data  donate.html  download.html \
  favicon.ico  fixperms.sh  gpg images  index.html  packages.html  pub  tmp \
  tools.html \
  "$site:/$rdir" \

#ssh "$site" '/var/www/blackarch.org/fixperms.sh'
