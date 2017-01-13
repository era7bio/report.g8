#!/bin/sh
set -x
ME=`dirname $0`
pandoc --toc --template=${ME}/era7.report.tex ${ME}/../paper.md --smart -s --biblatex --bibliography ${ME}/../refs.bib -o ${ME}/paper.tex
xelatex -output-directory ${ME} -halt-on-error ${ME}/paper.tex
biber ${ME}/paper
xelatex -output-directory ${ME} -halt-on-error ${ME}/paper.tex
biber ${ME}/paper
xelatex -output-directory ${ME} -halt-on-error ${ME}/paper.tex
