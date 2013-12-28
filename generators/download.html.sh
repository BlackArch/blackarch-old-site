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
