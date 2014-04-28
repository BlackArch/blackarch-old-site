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
	Please note that although BlackArch is past the beta stage, it is still a
	relatively new project. To report bugs and request new tools, please visit
	the
	<a href="https://github.com/BlackArch/blackarch/issues">issue tracker</a>
	on Github, stop by <a href="contact.html">IRC</a>, or <a
	href="mailto:blackarchlinux@gmail.com" title="Contact BlackArch
	Team">email</a> us.
	<br /><br />
	<h3>Screenshots</h3>
	<hr>
	The BlackArch Live ISO contains multiple window managers. Here are
	screenshots of a few of them:
  <br /><br />
  <table>
  <tr>
  <td>
  <b>Fluxbox Window Manager</b>
  <br />
  <a target="_blank" href="images/screenshots/fluxbox.png">
  <img src="images/screenshots/fluxbox.png" style="border:1px grey solid"
  width="320" height="200" /></a>
  </td>
  <td width="20"></td>
  <td>
  <b>Openbox Window Manager</b>
  <br />
  <a target="_blank" href="images/screenshots/openbox.png">
  <img src="images/screenshots/openbox.png" style="border:1px grey solid"
  width="320" height="200" /></a>
  </td>
  <td width="20"></td>
  <td>
  <b>Awesome Window Manager</b>
  <br />
  <a target="_blank" href="images/screenshots/awesome.png">
  <img src="images/screenshots/awesome.png" style="border:1px grey solid"
  width="320" height="200" /></a>
  </td>
  <td width="20"></td>
  <td>
  <b>Spectrwm Window Manager</b>
  <br />
  <a target="_blank" href="images/screenshots/spectrwm.png">
  <img src="images/screenshots/spectrwm.png" style="border:1px grey solid"
  width="320" height="200" /></a>
  </td>
  </tr>
  </table>
  <br />
	<h3>Who is behind BlackArch Linux?</h3>
	<hr>
	BlackArch Linux is backed by a team of volunteers. Some of them have chosen
  to appear in this list:
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
			<td>teitelmanevan[at]gmail.com </td>
			<td><a href="gpg/paraxor.asc" target="_blank">0xEA87E4E3</a></td>
			<td>4345 7715 66D7 6038 C7FE B438 63EC 0ADB EA87 E4E3</td>
			<td>Founder, Developer, Committer</td>
		</tr>
		<tr>
			<td>Levon Kayan</td>
			<td>noptrix</td>
			<td>noptrix[at]nullsecurity.net</td>
			<td><a href="gpg/noptrix.asc" target="_blank">0xDCA45D42</a></td>
			<td>250A 573C CA93 01B3 7A34  7860 4D48 E33A DCA4 5D42</td>
			<td>Developer, Committer</td>
		</tr>
		<tr>
			<td>Javier</td>
			<td>nrz</td>
			<td>nrz[at]nullsecurity.net</td>
			<td><a href="gpg/nrz.asc" target="_blank">0x7C03DD86</a></td>
			<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>
			<td>Developer, Commiter</td>
		</tr>
		<tr>
			<td>Ellis Kenyo</td>
			<td>elken</td>
			<td>elken.tdos[at]gmail.com</td>
			<td><a href="gpg/elken.asc" target="_blank">0x0F4093D1</a></td>
			<td>A38C A4EB 2A23 27DC 3713  3E22 0C8D AD09 0F40 93D1</td>
			<td>Developer, Committer</td>
		</tr>
		<tr>
			<td>Francesco Piccinno</td>
			<td>nopper</td>
			<td>stack.box[at]gmail.com</td>
			<!--<td><a href="gpg/hoyt.asc" target="_blank">0x13714D33</a></td>-->
			<!--<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>-->
			<td></td>
			<td></td>
			<td>Commiter</td>
		</tr>
		<tr>
			<td>Aaron Lewis</td>
			<td>Hoyt</td>
			<td>the.warl0ck.1989[at]gmail.com</td>
			<td><a href="gpg/hoyt.asc" target="_blank">0x13714D33</a></td>
			<td>9F67 391B B770 8FF6 99DC  D92D 87F6 2602 1371 4D33</td>
			<td>Commiter</td>
		</tr>
		<tr>
			<td></td>
			<td>sudokode</td>
			<td>sudokode[at]gmail.com</td>
			<td><a href="gpg/sudokode.asc" target="_blank">0x8B0554C7</a></td>
			<td>54EB C502 AF40 9514 1E00  4E95 9753 5EC1 8B05 54C7</td>
			<td>Committer</td>
		</tr>
		<tr>
			<td></td>
			<td>t60r</td>
			<td>merkinmaker[at]gmail.com</td>
			<!--<td><a href="gpg/hoyt.asc" target="_blank">0x13714D33</a></td>-->
			<!--<td>D7A7 F999 851D 0AF4 47D1  C292 0A9A 8EC5 7C03 DD86</td>-->
			<td></td>
			<td></td>
			<td>Contributor</td>
		</tr>
		<tr>
			<td>Pierre B.</td>
			<td>Pi3rrot</td>
			<td>pierre[at]pi3rrot.net</td>
			<td><a href="gpg/pi3rrot.asc" target="_blank">0x0B694394</a></td>
			<td>ABE2 FA90 9FAB 5532 AFAE  72CC 6594 137F 0B69 4394</td>
			<td>Contributor</td>
		</tr>
    <tr>
      <td>Jeremy Marlow</td>
      <td>i3_Arch</td>
      <td>jamarlow410[at]st.nashcc.edu</td>
      <td><a href="gpg/i3_arch.asc" target="_blank">0xC8173B68</a></td>
      <td>C854 01A4 1127 037D 540B  EB76 0147 3701 C817 3B68</td>
      <td>Contributor</td>
    </tr>
    <tr>
      <td>Guy Marquez</td>
      <td>w4rk3n</td>
      <td>guy[at]smartdefence.cl</td>
      <td><a href="gpg/w4rk3n.asc" target="_blank">0x27F4E268</a></td>
      <td>C69E 3E53 5F82 3695 A180  CAC0 4A56 9373 27F4 E268</td>
      <td>Contributor</td>
    </tr>
    <tr>
      <td>Felipe Montes</td>
      <td>GudwaL</td>
      <td>felipe[at]smartdefence.cl</td>
      <td><a href="gpg/gudwal.asc" target="_blank">0x9548C879</a></td>
      <td>B8EF 5522 B09F EF1E 48C1  6955 1A3B C9D4 9548 C879</td>
      <td>Contributor</td>
    </tr>
	</table>
</div>
EOF

cat common/footer
cat common/end
