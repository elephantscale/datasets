#!/usr/bin/env bash

hash wget 2>/dev/null || { echo >&2 "Wget required.  Aborting."; exit 1; }
hash unzip 2>/dev/null || { echo >&2 "unzip required.  Aborting."; exit 1; }

if [ ! -f "ml-latest.zip" ] ; then
    echo "downloading ml-latest.zip"
    wget 'http://files.grouplens.org/datasets/movielens/ml-latest.zip'
    #wget 'http://files.grouplens.org/datasets/movielens/ml-latest-small.zip'
else
        echo "ml-latest.zip exists"
fi

if [ ! -d "ml-latest-full" ] ; then
    echo "unzipping ml-latest.zip"
    unzip -o "ml-latest.zip"
    #unzip -o "ml-latest-small.zip"
    mv ml-latest ml-latest-full
else
    echo "ml-latest-full directory exists"
fi
