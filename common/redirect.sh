#!/bin/sh

url=$1

  cat <<EOF
<head>
<meta http-equiv="refresh" content="0; url=$url" />
</head>
<body>
Redirecting to $url...
</body>
EOF
