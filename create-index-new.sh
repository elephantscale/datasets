#!/bin/bash

## Usage:
##  bash create-index.sh
##
## Alternate parameters:
##   ROOT: Specify root path. Default is current folder.
##


ROOT=./
OUTPUT="index.html"
TITLE="ES datasets"
HEADING="Datasets"


tree -h -H  $ROOT > $OUTPUT
