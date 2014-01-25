cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Setting up as an Unofficial User Repository</h3>
<hr>
BlackArch is compatible with normal Arch installations. It acts as an unofficial user repository. If you want an ISO instead, see the <a href="#iso">Live ISO</a> section.
<br /><br />
<b>0.</b> If you have installed BlackArch before and there is an existing <span id="cfont_tab">[blackarch]</span> entry in <span id="cfont_tab">/etc/pacman.conf</span>, remove or comment out the entry and run <span id="cfont_tab">pacman -Syy</span>.
<br /><br />
<b>1.</b> Run the following as root. This is for package signing.
<p id="cfont_tab">wget http://blackarch.org/blackarch/blackarch/os/x86_64/blackarch-keyring-20140118-3-any.pkg.tar.xz{,.sig}</p>
<p id="cfont_tab">gpg --keyserver hkp://pgp.mit.edu --recv-keys '4345771566D76038C7FEB43863EC0ADBEA87E4E3'</p>
<p id="cfont_tab">gpg --with-fingerprint --verify blackarch-keyring-20140118-3-any.pkg.tar.xz.sig</p>
<p id="cfont_tab">rm blackarch-keyring-20140118-3-any.pkg.tar.xz.sig</p>
<p id="cfont_tab">pacman-key --init</p>
<p id="cfont_tab">pacman -U blackarch-keyring-20140118-3-any.pkg.tar.xz</p>
<br />
<b>2.</b> If possible, please verify the signing key's fingerprint against as many sources as possible.
<br />
<br />
<b>3.</b> Append the following lines to your /etc/pacman.conf file:
<p id="cfont_tab">[blackarch]</p>
<p id="cfont_tab">Server = &lt;mirror_site&gt;/$repo/os/$arch</p>
Replace <span id="cfont_tab">&lt;mirror_site&gt;</span> with a mirror site of your choosing. Please use one of our official mirrors. See <a href="#mirrors">Mirror Sites</a>.
<br />
<br />
<b>4.</b> Now run:
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
<a name="iso"><h3>BlackArch Linux ISOs</h3></a>
<hr>
The following list contains official BlackArch live-ISO and netinstall-ISO images.
The images can be burned to a DVD, mounted as an ISO file, or be directly written
to a USB stick using a utility like `dd`.
<br /><br />
<b>Default login for all ISOs: root:blackarch</b>
<br /><br />
Do not use UNetBootIn to write the ISO file to a disk. UNetBootIn modifies the
bootloader configuration, which is bad. You can use this instead:
<br /><br />
<p id="cfont_tab"># dd bs=512M if=file.iso of=/dev/sdX</p>
<br /><br />
<b>Live-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.23-dual.iso">
blackarchlinux-live-2014.01.23-dual.iso</a>
- SHA1: e4f152750444a367789898dbb59ff047b788470d - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.23-x86_64.iso">
blackarchlinux-live-2014.01.23-x86_64.iso</a>
- SHA1: 5751765c761486937308fd5c383ed6c358894f01 - Size: 2.2 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.23-i686.iso">
blackarchlinux-live-2014.01.23-i686.iso</a>
- SHA1: 2ecb201a0b58a2246188825c696a69bd0919dff7 - Size: 2.0 GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.23-dual.iso">
blackarchlinux-netinst-2014.01.23-dual.iso</a>
- SHA1: 410dd18f174868555bd8932021cdbaad769841a9 - Size: 620 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.23-x86_64.iso">
blackarchlinux-netinst-2014.01.23-x86_64.iso</a>
- SHA1: 3f381d744a1d56d70aaef69b59ad3e814af2311b - Size: 330 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.23-i686.iso">
blackarchlinux-netinst-2014.01.23-i686.iso</a>
- SHA1: e1627501e97be60a51b68ea48d007588a2269134 - Size: 292 MB
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
<img src="images/flags/fr.png" /> <b>France</b>
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
