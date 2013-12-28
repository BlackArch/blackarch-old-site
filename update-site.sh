#!/bin/sh

# update num packages (about.html)
update_about() {
  echo "[*] updating about.html"

  git_clone
  num_pkg=`grep -r '^groups' /tmp/BA/packages/ | wc -l`
  sed -i "s/we have <b>.*<\/b>/we have <b>$num_pkg<\/b>/" about.html
}

# update tools table (tools.html)
update_tools() {
  echo "[*] updating tools.html"

  git_clone

  rm -rf tmpl/foo.html
  rm -rf tmpl/tools.html

  for f in /tmp/BA/packages/*/PKGBUILD
  do
    pkgname="`grep 'pkgname=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"
    pkgver="`grep 'pkgver=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"
    pkgdesc="`grep 'pkgdesc=' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"
    url="`grep 'url' ${f} | tr -d '()' | cut -d '=' -f 2 | tr -d "'" |
    tr -d '"'`"

    echo "<tr>" >> tmpl/foo.html
    echo "<td>${pkgname}</td>" >> tmpl/foo.html
    echo "<td>${pkgver}</td>" >> tmpl/foo.html
    echo "<td>${pkgdesc}</td>" >> tmpl/foo.html
    echo "<td><a href=\"${url}\">${url}</a></td>" >> tmpl/foo.html
    echo "</tr>" >> tmpl/foo.html
  done

  echo "<!-- generated `date` -->" >> tmpl/tools.html
  cat tmpl/tools_start.html tmpl/foo.html tmpl/tools_end.html >> tmpl/tools.html
}

# update 'recent updates' (index.html)
update_index() {
  echo "[*] updating index.html"

}

git_clone() {
  if [ ! -d "/tmp/BA" ]
  then
    git clone https://git@github.com/BlackArch/blackarch.git /tmp/BA \
	  > /dev/null 2>&1
  fi
}

clean_up() {
  rm -rf /tmp/BA
}

main() {
  if [ "${1}" = "a" ]
  then
    update_about
  elif [ "${1}" = "t" ]
  then
    update_tools
  elif [ "${1}" = "i" ]
  then
    update_index
  elif [ "${1}" = "all" ]
  then
    update_about
    update_tools
    update_index
  else
    echo "[!] usage: update-site.sh <arg>"
    echo "  a   - update about.html"
    echo "  t   - update tools.html"
    echo "  i   - update index.html"
    echo "  all - update all"
    exit 1337
  fi

  clean_up
}

main "${@}"
