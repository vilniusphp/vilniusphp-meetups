#!/bin/bash
#
# Generate main README.md file from contents of subfolders.
#

OUTPUT=README.md

echo "# VilniusPHP Meetups

Presentations from [VilniusPHP](http://www.vilniusphp.lt) community meetups.

" > $OUTPUT

for f in `find */README.md | sort -r`; do
    cat $f | grep -v "^ *$" >> $OUTPUT
    printf "\n" >> $OUTPUT
done
