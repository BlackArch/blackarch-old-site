cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Download BlackArch</h3>
<hr>
<p>To make use of the packages in the toolset follow these instructions.</p>
<br/>
<p>Append these lines to <code>/etc/pacman.conf</code> to add the BlackArch repository:</p>
<p id="cfont_tab">[blackarch]</p>
<p id="cfont_tab">Server = &lt;mirror_site&gt;</p>
Where &lt;mirror_site&gt; should be a complete URL pointing to the repository.
Please use one of our official mirrors. See below.
<br /><br />
<p>For package signing, run the following to pull in and sign the package signing keys:</p>
<p id="cfont_tab">$ sudo pacman-key -r 4345771566D76038C7FEB43863EC0ADBEA87E4E3</p>
<p id="cfont_tab">$ sudo pacman-key --lsign-key 4345771566D76038C7FEB43863EC0ADBEA87E4E3</p>
<br/>
Please ensure that all packages are signed with our valid keys, if they are not
then you are not installing our packages! See
<a href="about.html">HERE</a> for the valid keys.
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
<a href="blackarch/iso/blackarchlinux-wm-dvd-2014.XX.XX-dual.iso">
blackarchlinux-wm-dvd-2014.XX.XX-dual.iso</a> - SHA1: XX - Size: 3.9 GB
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
