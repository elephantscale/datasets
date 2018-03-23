#!/bin/bash
cat $1 | sed s/^A/,/g | tr '[:upper:]' '[:lower:]' >
