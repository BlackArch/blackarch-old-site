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
<br/>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif"
border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif"
width="1" height="1">
</form>
</form>
</p>
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
