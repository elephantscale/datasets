#!/bin/bash
find . -type d -exec bash -c 'echo "{} : files=" `ls "{}" | wc -l`  ", size=" `du -skh "{}" | cut -f 1`' \;

