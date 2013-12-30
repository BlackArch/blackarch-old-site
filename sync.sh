#!/bin/sh

site=blackarch.org
rdir=/nginx/var/www

cd "`dirname "$0"`"

eval $(ssh-agent)
trap "kill $SSH_AGENT_PID" EXIT
ssh-add

# Delete manually or something.
rsync --chmod a+rX,ug+w -avz ./ "$site:/$rdir" \
  --exclude=.git --exclude=git --exclude=common --exclude=generators
#ssh "$site" '/var/www/blackarch.org/fixperms.sh'
