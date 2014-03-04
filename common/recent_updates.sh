#!/bin/sh

cat <<EOF
<p id="info">
<a><b>Recent Updates</b></a>
<br /><br />
EOF

while IFS='	' read -r pkg date ; do
	#<a id="applink" href="https://github.com/BlackArch/blackarch/blob/master/packages/pack/PKGBUILD">update</a><br>
	echo "$pkg $date"
done

cat <<EOF
</p>
<br />
EOF
