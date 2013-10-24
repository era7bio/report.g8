#!/bin/sh
# this script will generate
# \$1 = your markdown file
# \$2 = the output file name you want
set -e
# use the latex template
pandoc \$1 -o \$2.tex --template=./era7.report.tex \
  --variable project=$project$
  --natbib --smart --toc --reference-links  
# now run xelatex on it
xelatex \$2.tex
xelatex \$2.tex