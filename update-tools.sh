get_field() {
  grep "^${1}=" ${f} | tr -d '()' | cut -d '=' -f 2 | sed "s/^['\"]//;s/['\"]$//"
}

update_tools() {
  echo "[*] updating data/tools"

  rm -f data/tools

  grep -l 'groups=(' git/blackarch/packages/*/PKGBUILD |
  while read f ; do
    pkgname=`get_field pkgname`
    pkgver=`get_field pkgver`
    pkgdesc=`get_field pkgdesc`
    url=`get_field url`

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
    ( cd git/blackarch
    git pull origin master \
      > /dev/null 2>&1 )
  fi
}

handle_git
update_tools
