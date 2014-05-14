#!/bin/sh

err() {
	echo >&2 `tput bold; tput setaf 1`"ERROR: $*"`tput sgr0`
}

msg() {
	echo `tput bold; tput setaf 2`"$*"`tput sgr0`
}

if [ $EUID != 0 ] ; then
	err 'you must be root.'
	exit 1
fi

msg 'installing blackarch keyring...'

tmp=`mktemp -d /tmp/blackarch_strap.XXXXXXXX`
trap "rm -rf $tmp" EXIT
cd "$tmp"

# Retrieve the keyring.
curl -s -O 'http://blackarch.org/keyring/blackarch-keyring.pkg.tar.xz{,.sig}'
#wget -q http://blackarch.org/keyring/blackarch-keyring.pkg.tar.xz{,.sig}

# Verify the keyring signature.
# This is pointless if you do not verify the key fingerprint.
gpg --keyserver hkp://pgp.mit.edu \
    --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1
if ! gpg --keyserver-options no-auto-key-retrieve \
         --with-fingerprint blackarch-keyring.pkg.tar.xz.sig > /dev/null 2>&1 ; then
	err 'invalid keyring signature. please stop by irc.freenode.net/blackarch.'
	exit 1
fi

# If we do not delete this now, pacman complains.
rm blackarch-keyring.pkg.tar.xz.sig

# Make sure /etc/pacman.d/gnupg is usable.
pacman-key --init

# Install the keyring.
if ! pacman --config /dev/null \
	        --noconfirm -U blackarch-keyring.pkg.tar.xz ; then
	err 'keyring installation failed.'
	exit 1
fi

msg 'success.'
