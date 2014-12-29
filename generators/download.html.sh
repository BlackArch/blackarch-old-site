cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<a name="unofficial_user_repository"><h3>Setting up as an Unofficial User Repository</h3></a>
<hr>
BlackArch is compatible with normal Arch installations. It acts as an unofficial user repository. If you want an ISO instead, see the <a href="#iso">ISO</a> section.
<br />
If you wish to install BlackArch on an ARM device, see the <a href="#arm">ARM</a> section.
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
<h3>Installing Packages</h3>
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
<a name="arm"><h3>ARM</h3></a>
<hr />
BlackArch is compatible with ArchLinuxARM, meaning it effectively supports all
of the platforms listed <a href="http://archlinuxarm.org/platforms">here</a>.
<br /><br />
In order to install BlackArch on an ARM platform, follow the install
instructions for your device on <a
href="http://archlinuxarm.org/platforms">archlinuxarm.org</a> and install
BlackArch
<a href="#unofficial_user_repository">as an unofficial user repository</a>.
Soon we will release adaptations of the ArchLinuxARM images with BlackArch
packages pre-installed.
<br /><br />
<a name="iso"><h3>ISO</h3></a>
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
<a href="blackarch/iso/blackarchlinux-live-2014.10.07-x86_64.iso">
blackarchlinux-live-2014.10.07-x86_64.iso</a>
- SHA1: 8831f3387a3a40dcdf79ff00f023e6f7657bf8f2 - Size: 3.9 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.10.07-i686.iso">
blackarchlinux-live-2014.10.07-i686.iso</a>
- SHA1: 24151410fa653d62cd50e542fdc75ad9e7d80d1d - Size: 3.6 GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.10.07-x86_64.iso">
blackarchlinux-netinst-2014.10.07-x86_64.iso</a>
- SHA1: 54b8ec465c42e8c5ed26184c637c8807a3452eb5 - Size: 328 MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.10.07-i686.iso">
blackarchlinux-netinst-2014.10.07-i686.iso</a>
- SHA1: 9dc8ca298320d72f7347fd3e1a108b9bd9ba32d7 - Size: 292 MB
<br /><br />
<h3>Installing BlackArch Linux using Live-ISO, Netinstall-ISO or ArchLinux</h3>
<hr />
Install blackarch-install-scripts package:
<p id="cfont_tab"># pacman -S blackarch-install-scripts</p>
<br />
Run
<p id="cfont_tab"># blackarch-install</p>
<br />
<a name="mirrors"><h3>Mirror Sites</h3></a>
<hr>
The following list contains official BlackArch Linux mirror sites.
<br /><br />
<img src="images/flags/ca.png" /> <b>Canada</b>
<br />
<a href="http://mirror.clibre.uqam.ca/blackarch/" target="_blank">
http://mirror.clibre.uqam.ca/blackarch/</a>
<br />
<a href="http://blackarch.dropswitch.net/blackarch/" target="_blank">
http://blackarch.dropswitch.net/blackarch/</a>
<br /><br />
<img src="images/flags/cn.png" /> <b>China</b>
<br />
<a href="http://mirrors.hustunique.com/blackarch/" target="_blank">
http://mirrors.hustunique.com/blackarch/</a>
<br /><br />
<img src="images/flags/ec.png" /> <b>Ecuador</b>
<br />
<a href="http://mirror.cedia.org.ec/blackarch/" target="_blank">
http://mirror.cedia.org.ec/blackarch/</a>
<br />
<a href="http://mirror.espoch.edu.ec/blackarch" target="_blank">
http://mirror.espoch.edu.ec/blackarch</a>
<br /><br />
<img src="images/flags/fr.png" /> <b>France</b>
<br />
<a href="http://blackarch.leneveu.fr/blackarch/" target="_blank">
http://blackarch.leneveu.fr/blackarch/</a>
<br />
<a href="http://blackarch.pi3rrot.net/blackarch/" target="_blank">
http://blackarch.pi3rrot.net/blackarch/</a>
<br />
<a href="http://mirror.adversec.com/blackarch/" target="_blank">
http://mirror.adversec.com/blackarch/</a>
<br /><br />
<img src="images/flags/de.png" /> <b>Germany</b>
<br />
<a href="http://www.blackarch.org/blackarch/">http://www.blackarch.org/blackarch/</a>
<br />
<a href="http://blackarch.nullsecurity.net/blackarch/" target="_blank">
http://blackarch.nullsecurity.net/blackarch/</a>
<br />
<a href="http://blackarch1.curesec.com/blackarch/" target="_blank">
http://blackarch1.curesec.com/blackarch/</a>
<br />
<a href="http://blackarch2.curesec.com/blackarch/" target="_blank">
http://blackarch2.curesec.com/blackarch/</a>
<br /><br />
<img src="images/flags/gb.png" /> <b>Great Britain</b>
<br />
<a href="http://www.mirrorservice.org/sites/blackarch.org/blackarch/">
http://www.mirrorservice.org/sites/blackarch.org/blackarch/</a>
<br /><br />
<img src="images/flags/ie.png" /> <b>Ireland</b>
<br />
<a href="ftp.heanet.ie/mirrors/blackarch/" target="_blank">
http://ftp.heanet.ie/mirrors/blackarch/</a>
<br /><br />
<img src="images/flags/jp.png" /> <b>Japan</b>
<br />
<a href="http://www.ftp.ne.jp/Linux/packages/blackarch/" target="_blank">
http://www.ftp.ne.jp/Linux/packages/blackarch/</a>
<br />
<a href="ftp://ftp.kddilabs.jp/Linux/packages/blackarch/" target="_blank">
ftp://ftp.kddilabs.jp/Linux/packages/blackarch/</a>
<br /><br />
<img src="images/flags/nl.png" /> <b>Netherlands</b>
<br />
<a href="http://blackarch.pr0s3c.nl/blackarch/" target="_blank">
http://blackarch.pr0s3c.nl/blackarch/</a>
<br />
<a href="https://blackarch.pr0s3c.nl/blackarch/" target="_blank">
https://blackarch.pr0s3c.nl/blackarch/</a>
<br /><br />
<img src="images/flags/ru.png" /> <b>Russia</b>
<br />
<a href="http://mirror.yandex.ru/mirrors/blackarch/" target="_blank">
http://mirror.yandex.ru/mirrors/blackarch/</a>
<br />
<a href="ftp://mirror.yandex.ru/mirrors/blackarch/" target="_blank">
ftp://mirror.yandex.ru/mirrors/blackarch/
<br />
<a href="rsync://mirror.yandex.ru/mirrors/blackarch/" target="_blank">
rsync://mirror.yandex.ru/mirrors/blackarch/
<br /><br />
<img src="images/flags/za.png" /> <b>South Africa</b>
<br />
<a href="http://blackarch.co.za/blackarch/" target="_blank">
http://blackarch.co.za/blackarch/</a>
<br /><br />
<img src="images/flags/es.png" /> <b>Spain</b>
<br />
<a href="http://blackarch.smartdefence.cl/blackarch/" target="_blank">
http://blackarch.smartdefence.cl/blackarch/</a>
<br /><br />
<img src="images/flags/se.png" /> <b>Sweden</b>
<br />
<a href="http://mirror.zetup.net/blackarch/" target="_blank">
http://mirror.zetup.net/blackarch/</a>
<br /><br />
<img src="images/flags/tw.png" /> <b>Taiwan</b>
<br />
<a href="http://blackarch.cs.nctu.edu.tw/" target="_blank">
http://blackarch.cs.nctu.edu.tw/</a>
<br />
<a href="rsync://blackarch.cs.nctu.edu.tw/blackarch/" target="_blank">
rsync://blackarch.cs.nctu.edu.tw/blackarch/</a>
<br />
<a href="http://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">
http://ftp.yzu.edu.tw/Linux/blackarch/</a>
<br />
<a href="ftp://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">
ftp://ftp.yzu.edu.tw/Linux/blackarch/</a>
<br />
<a href="rsync://ftp.yzu.edu.tw/Linux/blackarch/" target="_blank">
rsync://ftp.yzu.edu.tw/Linux/blackarch/</a>
<br /><br />
<img src="images/flags/tr.png" /> <b>Turkey</b>
<br />
<a href="http://knuth.mirrortr.com/blackarch/" target="_blank">
http://knuth.mirrortr.com/blackarch/</a>
<br />
<a href="ftp://knuth.mirrortr.com/blackarch/" target="_blank">
ftp://knuth.mirrortr.com/blackarch/</a>
<br />
<a href="rsync://knuth.mirrortr.com/blackarch/" target="_blank">
rsync://knuth.mirrortr.com/blackarch/</a>
<br /><br />
<img src="images/flags/us.png" /> <b>USA</b>
<br />
<a href="https://blackarch.mirror.packetfire.org/" target="_blank">
https://blackarch.mirror.packetfire.org/</a>
<br />
<a href="http://blackarch.mirror.packetfire.org/" target="_blank">
http://blackarch.mirror.packetfire.org/</a>
<br />
<a href="rsync://blackarch.mirror.packetfire.org/" target="_blank">
rsync://blackarch.mirror.packetfire.org/</a>
<br />
<a href="https://deadbeef.ninja/blackarch/" target="_blank">
https://deadbeef.ninja/blackarch/</a>
<br />
<a href="http://mirror.team-cymru.org/blackarch/" target="_blank">
http://mirror.team-cymru.org/blackarch/
<br />
<a href="ftp://mirror.team-cymru.org/blackarch/" target="_blank">
ftp://mirror.team-cymru.org/blackarch/
<br />
<a href="rsync://mirror.team-cymru.org/blackarch/" target="_blank">
rsync://mirror.team-cymru.org/blackarch/
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
