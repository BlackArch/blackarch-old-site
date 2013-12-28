update_tools() {
  echo "[*] updating data/tools"

  rm -f data/tools

  for f in git/blackarch/packages/*/PKGBUILD ; do
    pkgname="`grep '^pkgname=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"
    pkgver="`grep '^pkgver=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"
    pkgdesc="`grep '^pkgdesc=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"
    url="`grep '^url=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"

    printf '%s\t%s\t%s\t%s\n' "${pkgname}" "${pkgver}" "${pkgdesc}" "${url}" >> data/tools
  done
}

handle_git() {
  if [ ! -d git/blackarch ] ; then
    echo "[*] cloning git repo"
    mkdir -p git
    git clone https://git@github.com/BlackArch/blackarch.git git/blackarch \
      > /dev/null 2>&1
  else
    echo "[*] updating git repo"
    cd git/blackarch
    git pull origin master \
      > /dev/null 2>&1
  fi
}

handle_git
update_tools
