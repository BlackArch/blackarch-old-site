#!/bin/sh

usr="${1}"
site='blackarch.org'
rdir='/nginx/var/www'

if [ ${#} -ne 1 ]
then
    echo "[!] usage: sync.sh <user>"
    exit 1337
fi

cd "`dirname "$0"`"

if [ -z ${SSH_AUTH_SOCK} ]
then
    eval $(ssh-agent)
    trap "kill $SSH_AGENT_PID" EXIT
    ssh-add
fi

# Delete manually or something.
rsync --rsh="ssh -A -l ${usr}" --chmod "a+rX,ug+w" -avz \
    about.html blackarch contact.html css data donate.html download.html \
    favicon.ico fixperms.sh gpg images index.html packages.html pub tmp \
    tools.html guide.html "$site:/$rdir" \

ssh "$usr@$site" 'sudo sh /nginx/var/www/fixperms.sh'
