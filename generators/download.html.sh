cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Install on Existing Arch Machines</h3>
<hr>
<p>BlackArch can act as an unofficial user repository. See <a
		href="https://github.com/BlackArch/blackarch/blob/master/docs/README.md#setup">the README</a>
	on Github for instructions on installing BlackArch in this manner.</p>
	<br/><br/>

<!-- Uncomment once the ISO is ready -->
<!--
<h3>Download Live ISOs</h3>
<hr>
The following list contains official BlackArch Live-ISO images. The images can
be burned to a CD/DVD, mounted as an ISO file, or be directly written to a
USB stick using a utility like `dd`.
<br /><br />
<b>DVD</b>
<br />
<a href="blackarch/iso/blackarchlinux-wm-dvd-2014.01.10-dual.iso">
blackarchlinux-wm-dvd-2014.01.10-dual.iso</a> - SHA1: 7a5d1695e0251f23c9da1e789b62cde36af4e839 - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-kde-dvd-2014.XX.XX-dual.iso">
blackarchlinux-kde-dvd-2014.XX.XX-dual.iso</a> - SHA1: XX - Size: 4.X GB
<br />
<a href="blackarch/iso/blackarchlinux-gnome-dvd-2014.XX.XX-dual.iso">
blackarchlinux-gnome-dvd-2014.XX.XX-dual.iso</a> - SHA1: XX - Size: 4.X GB
<br /><br />
<b>CD</b>
<br />
<a href="blackarch/iso/blackarchlinux-wm-cd-2014.XX.XX-dual.iso">
blackarchlinux-wm-cd-2014.XX.XX-dual.iso</a> - SHA1: XX - Size: 6XX MB
<br />
<a href="blackarch/iso/blackarchlinux-kde-cd-2014.XX.XX-dual.iso">
blackarchlinux-kde-cd-2014.XX.XX-dual.iso</a> - SHA1: XX - Size: 6XX MB
<br />
<a href="blackarch/iso/blackarchlinux-gnome-cd-2014.XX.XX-dual.iso">
blackarchlinux-gnome-cd-2014.XX.XX-dual.iso</a> - SHA1: XX - Size: 6XX MB
<br /><br />
-->
<h3>Mirror Sites</h3>
<hr>
The following list contains official BlackArch Linux mirror sites.
<br /><br />
<img src="images/flags/us.png" /> <b>United States</b>
<br />
http://www.blackarch.org/blackarch/$repo/os/$arch
<br /><br />
<img src="images/flags/de.png" /> <b>Germany</b>
<br />
http://blackarch.nullsecurity.net/blackarch/$repo/os/$arch
</div>
EOF

cat common/footer
cat common/end
