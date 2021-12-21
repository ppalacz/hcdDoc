#!/bin/bash
SUFF=.txt
FNAME=$1
OFNAME=$1$SUFF
#
asciidoctor -v --backend docbook --out-file - $FNAME | \
	pandoc --from docbook --to plain --output $OFNAME
#
ls -lh $OFNAME
