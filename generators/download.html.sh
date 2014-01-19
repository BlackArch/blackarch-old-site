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
<br />
<h3>Installing packages from source (PKGBUILD)</h3>
<hr />
You may now compile and install tools using
<a href="https://github.com/BlackArch/blackman" target="_blank">blackman</a>
and PKGBUILD files.
<br /><br />
Install blackman tool:
<p id="cfont_tab">$ sudo pacman -S blackman</p>
<br />
Download, compile and install packages:
<p id="cfont_tab">$ blackman -i package</p>
<br />
Download, compile and install whole category:
<p id="cfont_tab">$ blackman -g group</p>
<br />
Download, compile and install all of the BlackArch tools:
<p id="cfont_tab">$ blackman -a</p>
<br />
To see the blackarch categories:
<p id="cfont_tab">$ blackman -l</p>
<br />
To see category tools:
<p id="cfont_tab">$ blackman -p category</p>
<br />
<h3>Installing BlackArch Linux using Live-ISO, Netinstall-ISO or ArchLinux</h3>
<hr />
Install blackarch-install-scripts package:
<p id="cfont_tab">$ sudo pacman -S blackarch-install-scripts</p>
<br />
Run
<p id="cfont_tab"># blackarch-install</p>
<br />
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
<a href="blackarch/iso/blackarchlinux-live-2014.01.17-dual.iso">
blackarchlinux-live-2014.01.17-dual.iso</a>
- SHA1: 1f3f09e0c5cbbb41f0a7382e835e315627da44ee - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.17-x86_64.iso">
blackarchlinux-live-2014.01.17-x86_64.iso</a>
- SHA1: 755b3defff99d27e2d5168f48647851354597bb5 - Size: 2.2 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.17-i686.iso">
blackarchlinux-live-2014.01.17-i686.iso</a>
- SHA1: 74a6df39f6191f03fcb4726518024e9323d6ccf9 - Size: 2.0 GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.16-dual.iso">
blackarchlinux-netinst-2014.01.16-dual.iso</a>
- SHA1: cbb57ddbc5acd171f7bf00706d0985acef15bc8a - Size: 626 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.16-x86_64.iso">
blackarchlinux-netinst-2014.01.16-x86_64.iso</a>
- SHA1: a3964376057c0872ee364f2c124494b22f47d116 - Size: 334 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.16-i686.iso">
blackarchlinux-netinst-2014.01.16-i686.iso</a>
- SHA1: 85770a834a0ba441757a2a4d2d24d71d6436b3eb - Size: 295 MB
<br /><br />
<a name="mirrors"><h3>Mirror Sites</h3></a>
<hr>
The following list contains official BlackArch Linux mirror sites.
<br /><br />
<img src="images/flags/ca.png" /> <b>Canada</b>
<br />
http://blackarch.dropswitch.net/blackarch/
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
