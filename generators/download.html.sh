cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Setup</h3>
<hr>
BlackArch is compatible with normal Arch installations. It acts as an unofficial user repository.
<br /><br />
Append the following lines to
<a href="https://www.archlinux.org/pacman/pacman.conf.5.html" target="_blank">/etc/pacman.conf</a>
to add the BlackArch repository:
<p id="cfont_tab">[blackarch]</p>
<p id="cfont_tab">Server = &lt;mirror_site&gt;/$repo/os/$arch</p>
Where &lt;mirror_site&gt; should be a complete URL pointing to the repository.
Please use one of our official mirrors. See <a href="#mirrors">Mirror Sites</a>.
<br /><br />
For package signing, run the following to pull in and sign the package signing keys:
<p id="cfont_tab">$ sudo pacman-key -r 4345771566D76038C7FEB43863EC0ADBEA87E4E3</p>
<p id="cfont_tab">$ sudo pacman-key --lsign-key 4345771566D76038C7FEB43863EC0ADBEA87E4E3</p>
<br />
Now run:
<p id="cfont_tab">$ sudo pacman -Syyu</p>
<br />
<h3>Installing packages</h3>
<hr>
You may now install tools from the blackarch repository.
<br /><br />
To list all of the available tools, run
<p id="cfont_tab">$ sudo pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u</p>
<br />
To install all of the tools, run
<p id="cfont_tab">$ sudo pacman -S blackarch</p>
<br />
To install a category of tools, run
<p id="cfont_tab">$ sudo pacman -S blackarch-&lt;category&gt;</p>
<br />
To see the blackarch categories, run
<p id="cfont_tab">$ sudo pacman -Sg | grep blackarch</p>
EOF

cat <<\EOF
<br/>
<h3>BlackArch Linux ISOs</h3>
<hr>
The following list contains official BlackArch live-ISO and netinstall-ISO images.
The images can be burned to a DVD, mounted as an ISO file, or be directly written
to a USB stick using a utility like `dd`.
<br /><br />
Default login for all ISOs: <b>root:blackarch</b>
<br /><br />
<b>Live-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.14-dual.iso">
blackarchlinux-live-2014.01.14-dual.iso</a>
- SHA1: c6d114bb877511a6a9d3644e543cbf443869c318 - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.15-x86_64.iso">
blackarchlinux-live-2014.01.15-x86_64.iso</a>
- SHA1: 2ffe8c508d79289aa4f384f809b9ea9741326a52 - Size: 2.2 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.15-i686.iso">
blackarchlinux-live-2014.01.15-i686.iso</a>
- SHA1: ac0c633b64b01ef1ce49dd9c206691ee91e16bbd - Size: 2.0 GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.15-dual.iso">
blackarchlinux-netinst-2014.01.15-dual.iso</a>
- SHA1: 2ffc3d4defd9a2612c1ab88a0fd28d6ebea33346 - Size: 626 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.15-x86_64.iso">
blackarchlinux-netinst-2014.01.15-x86_64.iso</a>
- SHA1: e54dd5b4bc41002cb5ce0676de8669ad70901971 - Size: 334 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.15-i686.iso">
blackarchlinux-netinst-2014.01.15-i686.iso</a>
- SHA1: 24a62af068860c2516ab0124d533090fcf04570c - Size: 295 MB
<br /><br />
<a name="mirrors"><h3>Mirror Sites</h3></a>
<hr>
The following list contains official BlackArch Linux mirror sites.
<br /><br />
<img src="images/flags/ca.png" /> <b>Canada</b>
<br />
http://loki.dropswitch.net/
<br /><br />
<img src="images/flags/fr.png" /> <b>France</b>
<br />
http://blackarch.pi3rrot.net/blackarch/
<br /><br />
<img src="images/flags/de.png" /> <b>Germany</b>
<br />
http://www.blackarch.org/blackarch/
<br />
http://blackarch.nullsecurity.net/blackarch/
<br /><br />
<img src="images/flags/us.png" /> <b>USA</b>
<br />
http://blackarch.paraxor.com/blackarch/
</div>
EOF

cat common/footer
cat common/end
