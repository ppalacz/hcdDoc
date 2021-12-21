#!/bin/bash
SUFF=.docx
FNAME=$1
OFNAME=$1$SUFF
#
asciidoctor -v --backend docbook --out-file - $FNAME | \
	pandoc --from docbook --to docx --output $OFNAME
#
ls -lh $OFNAME
