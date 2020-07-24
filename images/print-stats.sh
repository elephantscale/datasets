#!/bin/bash

dir="."
if [ -n "$1" ] ; then
    dir=$1
fi

find "$dir" -type d -exec bash -c 'echo "{} : files=" `find "{}" -type f | wc -l`  ", size=" `du -skh "{}" | cut -f 1`' \;

