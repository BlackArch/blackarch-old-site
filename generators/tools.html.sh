cat common/start
cat common/header

cat <<\EOF
<br/>
<div id="info">
<table id="tbl-minimalist" summary="Package List">
<thead>
<tr>
<th scope="col">Name</th>
<th scope="col">Version</th>
<th scope="col">Description</th>
<th scope="col">Homepage</th>
<tr>
</thead>
<tbody id="dataTable">
EOF

while IFS='	' read -r pkgname pkgver pkgdesc url ; do
cat <<EOF
<tr>
<td>${pkgname}</td>
<td>${pkgver}</td>
<td>${pkgdesc}</td>
<td><a href=\"${url}\">${url}</a></td>
</tr>
EOF
done < data/tools

cat <<\EOF
</tbody>
</table>
</div>
EOF

cat common/footer
cat common/end
