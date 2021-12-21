#!/bin/bash
SUFF=.pdf
FNAME=$1
OFNAME=$1$SUFF
#

asciidoctor-pdf -v $FNAME -o $OFNAME
#
ls -lh $OFNAME
