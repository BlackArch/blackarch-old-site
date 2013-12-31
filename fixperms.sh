#!/bin/sh

cd "`dirname "$0"`"

chown www-data:www-data -R .
chmod -R a+rX .
chmod -R ug+w .
