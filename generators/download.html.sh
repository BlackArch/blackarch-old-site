cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Install on Existing Arch Machines</h3>
<hr>
EOF

# This is mostly copy and pasted from the README.
markdown <<\EOF
BlackArch is compatible with normal Arch installations. It acts as an unofficial user repository.

<br>
Setup
-----------

Add this to
[`/etc/pacman.conf`](https://www.archlinux.org/pacman/pacman.conf.5.html):

```
[blackarch]
Server = http://www.blackarch.org/blackarch/$repo/os/$arch
```

For package signing, pull in and sign the package signing keys:

```
 # pacman-key -r 4345771566D76038C7FEB43863EC0ADBEA87E4E3
 # pacman-key --lsign-key 4345771566D76038C7FEB43863EC0ADBEA87E4E3
```

Now run

 ```
 # pacman -Syyu
 ```

<br>
Installing packages
-------------------

You may now install tools from the blackarch repository. To list all of the available tools, run

 ```
 # pacman -Sgg | grep blackarch | cut -d' ' -f2 | sort -u
 ```

To install all of the tools, run

 ```
 # pacman -S blackarch
 ```

To install a category of tools, run

 ```
 # pacman -S blackarch-<category>
 ```

To see the blackarch categories, run

 ```
 # pacman -Sg | grep blackarch
 ```
EOF

cat <<\EOF
<br/><br/>
<!-- Uncomment once the ISO is ready -->
<!--
<h3>Download Live ISOs</h3>
<hr>
The following list contains official BlackArch live-ISO and netinstall-ISO images.
The images can be burned to a DVD, mounted as an ISO file, or be directly written
to a USB stick using a utility like `dd`.
<br /><br />
<b>Live-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.11-dual.iso">
blackarchlinux-live-2014.01.11-dual.iso</a> - SHA1: XX - Size: 4.1 GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.11-x86_64.iso">
blackarchlinux-live-2014.01.11-dual.iso</a> - SHA1: XX - Size: 2.X GB
<br />
<a href="blackarch/iso/blackarchlinux-live-2014.01.11-i686.iso">
blackarchlinux-2014.01.11-i686.iso</a> - SHA1: XX - Size: 2.X GB
<br /><br />
<b>Netinstall-ISO</b>
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-dual.iso">
blackarchlinux-netinst-2014.01.11-dual.iso</a> - SHA1: XX - Size: 6XX MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-x86_64.iso">
blackarchlinux-netinst-2014.01.11-x86_64.iso</a> - SHA1: XX - Size: 6XX MB
<br />
<a href="blackarch/iso/blackarchlinux-netinst-2014.01.11-i686.iso">
blackarchlinux-netinst-2014.01.11-i686.iso</a> - SHA1: XX - Size: 6XX MB
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
