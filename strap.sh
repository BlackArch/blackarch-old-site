#!/bin/sh
#
# strap.sh - install and setup BlackArch Linux keyring
#


# simple error message wrapper
err()
{
    echo >&2 `tput bold; tput setaf 1`"[-] ERROR: ${*}"`tput sgr0`
    exit 1337

    return
}


# simple warning message wrapper
warn()
{
    echo >&2 `tput bold; tput setaf 1`"[!] WARNING: ${*}"`tput sgr0`
    return
}


# simple echo wrapper
msg()
{
    echo `tput bold; tput setaf 2`"[*] ${*}"`tput sgr0`

    return
}


# check for root privilege
check_priv()
{
    if [ $EUID -ne 0 ]
    then
        err "you must be root"
    fi

    return
}


# make a temporary directory and cd into
make_tmp_dir()
{
    tmp=`mktemp -d /tmp/blackarch_strap.XXXXXXXX`

    trap "rm -rf $tmp" EXIT
    cd "${tmp}"

    return
}


# retrieve the BlackArch Linux keyring
fetch_keyring()
{
    curl -s -O \
        'http://blackarch.org/keyring/blackarch-keyring.pkg.tar.xz{,.sig}'

    return
}

# verify the keyring signature
# note: this is pointless if you do not verify the key fingerprint
verify_keyring()
{
    gpg \
        --keyserver hkp://pgp.mit.edu \
        --recv-keys 4345771566D76038C7FEB43863EC0ADBEA87E4E3 > /dev/null 2>&1

    if ! gpg \
        --keyserver-options no-auto-key-retrieve \
        --with-fingerprint blackarch-keyring.pkg.tar.xz.sig > /dev/null 2>&1
    then
        err 'invalid keyring signature. please stop by irc.freenode.net/blackarch'
    fi

    return
}


# delete the signature files
delete_signature()
{
    if [ -f "blackarch-keyring.pkg.tar.xz.sig" ]
    then
        rm blackarch-keyring.pkg.tar.xz.sig
    fi

    return
}


# make sure /etc/pacman.d/gnupg is usable
check_pacman_gnupg()
{
    pacman-key --init

    return
}


# install the keyring
install_keyring()
{
    if ! pacman --config /dev/null \
        --noconfirm -U blackarch-keyring.pkg.tar.xz
    then
        err 'keyring installation failed'
    fi

    return
}


# ask user for mirror
get_mirror()
{
    printf '    -> enter a BlackArch Linux mirror url: '
    while read line
    do
        if [ ! -z "${line}" ]
        then
            # TODO: better checks here
            if [[ ${line} == http* ]]
            then
                mirror="${line}"
                break
            else
                warn 'please specify a correct mirror url'
                printf '    -> enter a BlackArch Linux mirror url: '
            fi
        fi
    done

    return
}


# update pacman.conf
update_pacman_conf()
{
    cat >> "/etc/pacman.conf" << EOF
[blackarch]
Server = ${mirror}/\$repo/os/\$arch
EOF

    return
}


# synchronize and update
pacman_update()
{
    pacman -Syyu

    return
}


# setup blackarch linux
blackarch_setup()
{
    check_priv
    msg 'installing blackarch keyring...'
    echo
    make_tmp_dir
    fetch_keyring
    verify_keyring
    delete_signature
    check_pacman_gnupg
    install_keyring
    echo
    msg 'keyring installed successfully'
    msg 'setting up BlackArch Linux'
    get_mirror
    msg 'updating pacman.conf'
    update_pacman_conf
    msg 'updating pacman'
    pacman_update
    echo
    msg 'success. BlackArch Linux is ready!'

    return
}


blackarch_setup
