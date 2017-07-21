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
    if [ "$(uname)" == "Darwin" ];
    then
        sed_regexp_flag='-E'
    else
        sed_regexp_flag='-r'
    fi
    cat $f | grep -v "^ *$" | sed ${sed_regexp_flag} "s/(\[.*\])\(([^http].*)\)/\1\(${path}\/\2\)/" >> $OUTPUT
    printf "\n" >> $OUTPUT
done
