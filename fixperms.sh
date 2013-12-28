#!/bin/sh

cd "`dirname "$0"`"

chown website:website -R .
chmod -R a+rX .
chmod -R ug+w .
