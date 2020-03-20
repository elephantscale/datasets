#!/bin/bash

## Usage:
##  ./create-index.sh
##
## Alternate parameters:
##   ROOT: Specify root path. Default is current folder.
##


ROOT=./
OUTPUT="index.html"
TITLE="ES datasets"
HEADING="Datasets"


INDEX=`ls -1 $ROOT | sed "s/^.*/      <li\>\<a\ href=\"&\"\>&\<\\/a\>\<\\/li\>/"`
echo "<html>
  <head><title>$TITLE</title></head>
  <body>
    <h2>$HEADING</h2>
    <hr>
    <ui>
$INDEX
    <ui>
  </body>
</html>"  >>$OUTPUT
