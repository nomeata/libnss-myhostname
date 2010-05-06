#!/bin/bash

if [ -z "$1" ]
then
	echo "Usage: $0 upstream-version"
	exit 1
fi

git archive \
	--prefix "libnss-gw-name-$1/" \
	--format tar \
	HEAD |
	tar --delete "libnss-gw-name-$1/debian" |
	gzip -9 >  "../libnss-gw-name_$1.orig.tar.gz" \

