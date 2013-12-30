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
	<a href="https://github.com/BlackArch/blackarch/blob/master/docs/README.md"><b>installation instructions</b></a>.
	<br /><br />
	This is a relatively new project. You will probably find little bugs here and
	there. To report bugs and request new tools, please visit the
	<a href="https://github.com/BlackArch/blackarch/issues">issue tracker</a> on Github or
	<a href="mailto:blackarchlinux@gmail.com"
		title="Contact BlackArch Team">email</a> us.
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
			<td>noptrix[at]nullsecurtiy.net</td>
			<td><a href="gpg/noptrix.asc">0xDCA45D42</a></td>
			<td>250A 573C CA93 01B3 7A34  7860 4D48 E33A DCA4 5D42</td>
			<td>Developer, Committer</td>
		</tr>
		<tr>
			<td>Javier F.</td>
			<td>nrz</td>
			<td>nrz[at]nullsecurity.net</td>
			<td><a href="gpg/nrz.asc">0x7C03DD86</a></td>
			<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>
			<td>Developer, Commiter</td>
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
			<td>James Roe</td>
			<td>t60r</td>
			<td>james.roe.jr[at]gmail.com</td>
			<!--<td><a href="gpg/hoyt.asc">0x13714D33</a></td>-->
			<!--<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>-->
			<td></td>
			<td></td>
			<td>Supporter</td>
		</tr>
	</table>
</div>
EOF

cat common/footer
cat common/end
