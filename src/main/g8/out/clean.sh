#!/bin/sh
# this script cleans all the *tex auxiliary files
# sometimes, particularly if the report is long, *tex gets confused
# stuff changes between *tex runs and everything crashes
# use this to remove all these tmpaux files
set -x
ME=`dirname $0`
rm paper.aux paper.log paper.out paper.toc paper.bbl paper.bcf paper.blg paper.run.xml
