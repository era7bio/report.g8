#!/bin/sh
# this script cleans all the *tex auxiliary files
# sometimes, particularly if the report is long, *tex gets confused
# stuff changes between *tex runs and everything crashes
# use this to remove all these tmpaux files
set -x
ME=`dirname $0`
rm ${ME}/paper.aux ${ME}/paper.log ${ME}/paper.out ${ME}/paper.toc ${ME}/paper.bbl ${ME}/paper.bcf ${ME}/paper.blg ${ME}/paper.run.xml
