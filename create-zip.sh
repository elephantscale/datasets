#!/bin/bash


zip_file_name="data.zip"
rm -f "$zip_file_name"
echo "## creating $zip_file_name...."

me=`pwd`

cd .. && zip  \
        -x '*.DS_Store*' \
        -x '*.data' \
        -x '*.git*' \
        -x '*.idea*' \
        -x '*.ipynb_checkpoints*' \
        -x '*.log' \
        -x '*.sh' \
        -x '*activity-data/*' \
        -x '*binary-classification*' \
        -x '*click-stream/json*' \
        -x '*clustering/*' \
        -x '*flight-data-hive*' \
        -x '*flight-data/raw/2015/*.csv*' \
        -x '*images/*' \
        -x '*metastore_db*' \
        -x '*ml-latest-full*' \
        -x '*multiclass-classification*' \
        -x '*nltk_data/*' \
        -x '*not-using*' \
        -x '*out*' \
        -x '*presidential_election_contribs/2016.zip' \
        -x '*presidential_election_contribs/2016/2016-full.csv.gz' \
        -x '*regression/*' \
        -x '*simple-ml*' \
        -x '*simple-ml-integers*' \
        -x '*simple-ml-scaling*' \
        -x '*street2shop*' \
        -x '*uber-nyc/full/*' \
        -x '*zip*' \
        \
        -r  "$zip_file_name" data && \
     zip -u "$zip_file_name"  data/images/*.txt data/images/*.html data/images/*.sh &&\
     mv "$zip_file_name"  "$me" &&  cd -

echo "## done."
