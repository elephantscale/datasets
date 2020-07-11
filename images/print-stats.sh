#!/bin/bash
find . -type d -exec bash -c 'echo "{} : files=" `find "{}" -type f | wc -l`  ", size=" `du -skh "{}" | cut -f 1`' \;

