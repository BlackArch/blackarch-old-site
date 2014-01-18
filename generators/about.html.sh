cat common/start
cat common/header

cat <<EOF
<div id="dl_body">
	<h3>What is BlackArch Linux?</h3>
	<hr>
	BlackArch Linux is a lightweight expansion to
	<a href="https://www.archlinux.org">Arch Linux</a> for penetration testers and security researchers.
	<br /><br />
	The repository contains <b>${TOOL_COUNT}</b> tools. You can install tools individually or
	in groups. BlackArch is compatible with existing Arch installs. For more information, see the
	<a href="https://github.com/BlackArch/blackarch/blob/master/docs/README.md">installation instructions</a>.
	<br /><br />
	This is a relatively new project. You will probably find little bugs here and
	there. To report bugs and request new tools, please visit the
	<a href="https://github.com/BlackArch/blackarch/issues">issue tracker</a>
	on Github, stop by <a href="contact.html">IRC</a>, or <a
	href="mailto:blackarchlinux@gmail.com" title="Contact BlackArch
	Team">email</a> us.
	<br /><br />
	<h3>Who is behind BlackArch Linux?</h3>
	<hr>
	BlackArch Linux is backed by a team of volunteers. Some of them have chosen to appear in this list:
	<br /><br />
	<table width="1100">
		<tr>
			<th align="left">Name</th>
			<th align="left">Nickname</th>
			<th align="left">E-Mail</th>
			<th align="left">PGP Key</th>
			<th align="left">Fingerprint</th>
			<th align="left">Role</th>
		</tr>
		<tr>
			<td>Evan Teitelman</td>
			<td>paraxor</td>
			<td>teitelmanevan[at]gmail.com</td>
			<td><a href="gpg/paraxor.asc">0xEA87E4E3</a></td>
			<td>4345 7715 66D7 6038 C7FE B438 63EC 0ADB EA87 E4E3</td>
			<td>Founder, Developer, Committer</td>
		</tr>
		<tr>
			<td>Levon Kayan</td>
			<td>noptrix</td>
			<td>noptrix[at]nullsecurity.net</td>
			<td><a href="gpg/noptrix.asc">0xDCA45D42</a></td>
			<td>250A 573C CA93 01B3 7A34  7860 4D48 E33A DCA4 5D42</td>
			<td>Developer, Committer</td>
		</tr>
		<tr>
			<td>Javier</td>
			<td>nrz</td>
			<td>nrz[at]nullsecurity.net</td>
			<td><a href="gpg/nrz.asc">0x7C03DD86</a></td>
			<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>
			<td>Developer, Commiter</td>
		</tr>
		<tr>
			<td>Ellis Kenyo</td>
			<td>elken</td>
			<td>elken.tdos[at]gmail.com</td>
			<a href="gpg/elken.asc">0x0F4093D1</a></td>
			<td>A38C A4EB 2A23 27DC 3713  3E22 0C8D AD09 0F40 93D1</td>
			<td>Committer</td>
		</tr>
		<tr>
			<td>Francesco Piccinno</td>
			<td>nopper</td>
			<td>stack.box[at]gmail.com</td>
			<!--<td><a href="gpg/hoyt.asc">0x13714D33</a></td>-->
			<!--<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>-->
			<td></td>
			<td></td>
			<td>Commiter</td>
		</tr>
		<tr>
			<td>Aaron Lewis</td>
			<td>Hoyt</td>
			<td>the.warl0ck.1989[at]gmail.com</td>
			<td><a href="gpg/hoyt.asc">0x13714D33</a></td>
			<td>9F67 391B B770 8FF6 99DC  D92D 87F6 2602 1371 4D33</td>
			<td>Commiter</td>
		</tr>
		<tr>
			<td></td>
			<td>sudokode</td>
			<td>sudokode[at]gmail.com</td>
			<td></td>
			<td></td>
			<td>Committer</td>
		</tr>
		<tr>
			<td></td>
			<td>t60r</td>
			<td>merkinmaker[at]gmail.com</td>
			<!--<td><a href="gpg/hoyt.asc">0x13714D33</a></td>-->
			<!--<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>-->
			<td></td>
			<td></td>
			<td>Contributor</td>
		</tr>
		<tr>
			<td>Pierre B.</td>
			<td>Pi3rrot</td>
			<td>pierre[at]pi3rrot.net</td>
			<td><a href="gpg/pi3rrot.asc">0x0B694394</a></td>
			<td>ABE2 FA90 9FAB 5532 AFAE  72CC 6594 137F 0B69 4394</td>
			<td>Contributor</td>
		</tr>
    <tr>
      <td>Jeremy Marlow</td>
      <td>i3_Arch</td>
      <td>jamarlow410[at]st.nashcc.edu</td>
      <td><a href="gpg/i3_arch.asc">0xC8173B68</a></td>
      <td>C854 01A4 1127 037D 540B  EB76 0147 3701 C817 3B68</td>
      <td>Contributor</td>
    </tr>
	</table>
</div>
EOF

cat common/footer
cat common/end
