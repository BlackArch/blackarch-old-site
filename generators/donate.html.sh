cat common/start
cat common/header

cat <<\EOF
<div id="dl_body">
<h3>Donate to BlackArchLinux</h3>
<hr>
<p><b>BlackArchLinux</b> survives because of the tireless efforts of many people
in the community and the core development circle. None of us are paid for our
work, and we don't have the personal funds to sustain server costs ourselves.
</p><br/>
<p>There are many ways to help support BlackArch Linux. If technical
development, documentation, or support aren't your strong points, you could
certainly help us by dropping a few bucks our way. Many thanks!</p>
<br />
<br />
<h3>Paypal</h3>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post"
target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="UPSCCPXHY8EBQ">
<input type="image"
src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0"
name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/de_DE/i/scr/pixel.gif"
width="1" height="1">
</form>
</div>
<div id="maincontent">
<div id="left">
<h3>A huge thanks to all your contributions!</h3>
</div>
<div id="right">
</div>
</div>
EOF

cat common/footer
cat common/end
