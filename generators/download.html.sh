cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Setting up as an Unofficial User Repository</h3>
<hr>
BlackArch is compatible with normal Arch installations. It acts as an unofficial user repository. If you want an ISO instead, see the <a href="#iso">Live ISO</a> section.
<br /><br />
<b>1.</b>Run <a href="http://blackarch.org/strap.sh"
	target="_blank">http://blackarch.org/strap.sh</a> as root. Example:
<br /><br />
<p id="cfont_tab">curl -s http://blackarch.org/strap.sh | sudo sh</p>
<br />
<b>2.</b> Append the following lines to your <span id="cfont_tab">/etc/pacman.conf</span> file:
<br /><br />
<p id="cfont_tab">[blackarch]</p>
<p id="cfont_tab">Server = &lt;mirror_site&gt;/$repo/os/$arch</p>
<br />
Replace <span id="cfont_tab">&lt;mirror_site&gt;</span> with a mirror site of your choosing. Please use one of our official mirrors. See <a href="#mirrors">Mirror Sites</a>.
<br /><br />
<b>3.</b> Now run:
<p id="cfont_tab"># pacman -Syyu</p>
<br />
<h3>Installing packages</h3>
<hr>
You may now install tools from the blackarch repository.
<br /><br />
To list all of the available tools, run
<p id="cfont_tab"># pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u</p>
<br />
To install all of the tools, run
<p id="cfont_tab"># pacman -S blackarch</p>
<br />
To install a category of tools, run
<p id="cfont_tab"># pacman -S blackarch-&lt;category&gt;</p>
<br />
To see the blackarch categories, run
<p id="cfont_tab"># pacman -Sg | grep blackarch</p>
<br />
<h3>Installing packages from source (PKGBUILD)</h3>
<hr />
As part of an alternative method of installation, you can build the blackarch
packages from source. You can find the PKGBUILDs <a href="https://github.com/BlackArch/blackarch/tree/master/packages">on github</a>.
<br /><br />
To build the entire repo, you can use the
<a href="https://github.com/BlackArch/blackman" target="_blank">blackman</a>
tool.
<br />
First, you must install blackman. If the BlackArch package repository is setup
on your machine (see above), you can install blackman like so:
<p id="cfont_tab">pacman -S blackman</p>
<br />
You can build and install blackman from source like so:
<p id="cfont_tab">mkdir blackman</p>
<p id="cfont_tab">cd blackman</p>
<p id="cfont_tab">wget https://raw2.github.com/BlackArch/blackarch/master/packages/blackman/PKGBUILD</p>
<p id="cfont_tab"># Make sure the PKGBUILD has not been maliciously tampered with.</p>
<p id="cfont_tab">makepkg -si</p>
<br />
You use blackman like so:
<br />
Download, compile and install packages:
<p id="cfont_tab"># blackman -i package</p>
<br />
Download, compile and install whole category:
<p id="cfont_tab"># blackman -g group</p>
<br />
Download, compile and install all of the BlackArch tools:
<p id="cfont_tab"># blackman -a</p>
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
<p id="cfont_tab"># pacman -S blackarch-install-scripts</p>
<br />
Run
<p id="cfont_tab"># blackarch-install</p>
<br />
<a name="iso"><h3>BlackArch Linux ISOs</h3></a>
<hr>
The following list contains official BlackArch live-ISO and netinstall-ISO images.
The images can be burned to a DVD, mounted as an ISO file, or be directly written
to a USB stick using a utility like `dd`.
<br /><br />
Do not use UNetBootIn to write the ISO file to a disk. UNetBootIn modifies the
bootloader configuration, which is bad. You can use this instead (where
/dev/sdX is your flashdrive):
<br />
<p id="cfont_tab"># dd bs=512M if=file.iso of=/dev/sdX</p>
Example:
<p id="cfont_tab"># dd bs=512M if=file.iso of=/dev/sde</p>
<br />
====== Default <span class="red"><b>username/password</b></span> for all ISOs: <span class="red">root:blackarch</span> ======
<br /><br />
<b>Live-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.27-x86_64.iso">
blackarchlinux-live-2014.01.27-x86_64.iso</a>
- SHA1: 7c309bd5d66af9d7cfd54819f44f2b45e5ac4e8e - Size: 2.9 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.27-i686.iso">
blackarchlinux-live-2014.01.27-i686.iso</a>
- SHA1: 5fe725d2a55a747fd00a981ff18538c59a1710cd - Size: 2.2 GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.27-x86_64.iso">
blackarchlinux-netinst-2014.01.27-x86_64.iso</a>
- SHA1: 094761e485c545677b1c3366b5dc5da3cba72f4f - Size: 331 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.27-i686.iso">
blackarchlinux-netinst-2014.01.27-i686.iso</a>
- SHA1: 30616b53b93c15d5d270312666801ed3ad5dec18 - Size: 293 MB
<br /><br />
<a name="mirrors"><h3>Mirror Sites</h3></a>
<hr>
The following list contains official BlackArch Linux mirror sites.
<br /><br />
<img src="images/flags/ca.png" /> <b>Canada</b>
<br />
<a href="http://blackarch.dropswitch.net/blackarch/" target="_blank">
http://blackarch.dropswitch.net/blackarch/</a>
<br /><br />
<img src="images/flags/cn.png" /> <b>China</b>
<br />
<a href="http://mirrors.hustunique.com/blackarch/" target="_blank">
http://mirrors.hustunique.com/blackarch/</a>
<br /><br />
<img src="images/flags/fr.png" /> <b>France</b>
<br />
<a href="http://blackarch.leneveu.fr/blackarch/" target="_blank">
http://blackarch.leneveu.fr/blackarch/</a>
<br />
<a href="http://blackarch.pi3rrot.net/blackarch/" target="_blank">
http://blackarch.pi3rrot.net/blackarch/</a>
<br /><br />
<img src="images/flags/de.png" /> <b>Germany</b>
<br />
<a href="http://www.blackarch.org/blackarch/">http://www.blackarch.org/blackarch/</a>
<br />
<a href="http://blackarch.nullsecurity.net/blackarch/" target="_blank">
http://blackarch.nullsecurity.net/blackarch/</a>
<br /><br />
<img src="images/flags/es.png" /> <b>Spain</b>
<br />
<a href="http://blackarch.smartdefence.cl/blackarch/" target="_blank">
http://blackarch.smartdefence.cl/blackarch/</a>
<br /><br />
<img src="images/flags/us.png" /> <b>USA</b>
<br />
<a href="http://mirror.jmu.edu/blackarch/" target="_blank">
http://mirror.jmu.edu/blackarch/</a>
<br />
<a href="ftp://mirror.jmu.edu/blackarch/" target="_blank">
ftp://mirror.jmu.edu/blackarch/</a>
<br />
<a href="rsync://mirror.jmu.edu/blackarch/" target="_blank">
rsync://mirror.jmu.edu/blackarch/</a>
<br />
<a href="http://mirror.oss.maxcdn.com/blackarch/" target="_blank">
http://mirror.oss.maxcdn.com/blackarch/</a>
<br />
<a href="ftp://mirror.oss.maxcdn.com/blackarch/" target="_blank">
ftp://mirror.oss.maxcdn.com/blackarch/</a>
<br />
<a href="rsync://mirror.oss.maxcdn.com/mirrors/blackarch/" target="_blank">
rsync://mirror.oss.maxcdn.com/mirrors/blackarch/</a>
<br />
<a href="http://blackarch.paraxor.com/blackarch/" target="_blank">
http://blackarch.paraxor.com/blackarch/</a>
</div>
EOF

cat common/footer
cat common/end
