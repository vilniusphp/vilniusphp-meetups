#!/bin/bash
#
# Generate main README.md file from contents of subfolders.
#

OUTPUT=README.md

echo "# VilniusPHP Meetups

Presentations from [VilniusPHP](http://www.vilniusphp.lt) community meetups.

" > $OUTPUT

for f in `find */README.md | sort -r`; do
    path=`echo $f | grep -Eo '^[^/]+'`
    cat $f | grep -v "^ *$" | sed -r "s/(\[.*\])\(([^http].*)\)/\1\(${path}\/\2\)/" >> $OUTPUT
    printf "\n" >> $OUTPUT
done
