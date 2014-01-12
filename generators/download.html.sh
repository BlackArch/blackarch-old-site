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
<p id="cfont_tab">SigLevel = Optional TrustAll</p>
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
<b>Live-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.12-dual.iso">
blackarchlinux-live-2014.01.12-dual.iso</a> -
SHA1: b4e51be400aab944c7eeaa45f021b28a4efeff3d - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.12-x86_64.iso">
blackarchlinux-live-2014.01.12-dual.iso</a>
SHA1: 31f014c720b7c51a7ce57f6fffb1b71c3e016ae6 - Size: 2.2 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.12-i686.iso">
blackarchlinux-live-2014.01.12-i686.iso</a>
- SHA1: cf9952951a61d0096f95fadc86a17a3279237168 - Size: 2.0 GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-dual.iso">
blackarchlinux-netinst-2014.01.11-dual.iso</a>
- SHA1: c25c15397525148c18fa0ef295f063845025a623 - Size: 620 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-x86_64.iso">
blackarchlinux-netinst-2014.01.11-x86_64.iso</a>
- SHA1: a0666b4531045c1516ceb19b52993deba4dd260e - Size: 330 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-i686.iso">
blackarchlinux-netinst-2014.01.11-i686.iso</a>
- SHA1: 6f287c2863fabc8d0bf7cf7807a256335a6f5cb3 - Size: 291 MB
<br /><br />
<a name="mirrors"><h3>Mirror Sites</h3></a>
<hr>
The following list contains official BlackArch Linux mirror sites.
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
