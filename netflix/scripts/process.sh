#!/bin/bash
FILES=./training_set/*
for f in $FILES
do
  awk -f ./netflix.awk $f >> consolidated.txt
done
