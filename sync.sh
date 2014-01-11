#!/bin/sh

site=blackarch.org
rdir=/nginx/var/www

cd "`dirname "$0"`"

eval $(ssh-agent)
trap "kill $SSH_AGENT_PID" EXIT
ssh-add

# Delete manually or something.
rsync --rsh="ssh -A -l ${USER}" --chmod "a+rX,ug+w" -avz ./ "$site:/$rdir" \
  --exclude={.git,git,common,generators,sync.sh,clean.sh,generate-site.sh,update-tools.sh}
#ssh "$site" '/var/www/blackarch.org/fixperms.sh'
