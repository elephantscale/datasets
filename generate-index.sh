#!/bin/bash

ROOT=./
HTTP="https://s3.amazonaws.com/elephantscale-public/data"
OUTPUT="index.html"
TITLE="ES datasets"
HEADING="Datasets"

i=0

echo "<html>" >> $OUTPUT
echo "<head> <title> $TITLE </title> </head>" >> $OUTPUT
echo "<body> <h1> $HEADING </h1>" >> $OUTPUT


echo "<UL>" >> $OUTPUT
for filepath in `find "$ROOT" ! -name "*.git" ! -name "*.idea" ! -name "*.idea" ! -name "*.DS_Store" -maxdepth 1 -mindepth 1 -type d  | sort`; do
  path=`basename "$filepath"`
  echo "  <LI>$path</LI>" >> $OUTPUT
  echo "  <UL>" >> $OUTPUT


  for i in `find "$filepath" ! -name "*.DS_Store" -type f| sort`; do
    file=`basename "$i"`
    echo "    <LI><a href=\"$HTTP/$path/$file\">$file</a></LI>" >> $OUTPUT
  done
  echo "  </UL>" >> $OUTPUT
done
echo "</UL>" >> $OUTPUT
echo "</body>" >> $OUTPUT
echo "</html>" >> $OUTPUT
