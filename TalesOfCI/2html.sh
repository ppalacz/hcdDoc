##### !/usr/bin/bash

asciidoctor -v --backend docbook --out-file - $1 | \
	pandoc --from docbook --to html --output $1.html
