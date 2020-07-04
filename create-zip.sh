#!/bin/bash


zip_file_name="data.zip"
rm -f "$zip_file_name"
echo "## creating $zip_file_name...."

me=`pwd`

cd .. && rm -f "$zip_file_name" && \
    rm -f data && ln -sf "$me" ./data && \
    zip  -x '*.DS_Store*'  -x '*click-stream/json*' -x "*.log" -x '*.git*'  -x '*zip*' -x '*.data' -x '*metastore_db*' -x '*out' -x '*.ipynb_checkpoints*' -x '*not-using*' -x '*nltk_data/*' -x '*activity-data/*' -x '*presidential_election_contribs/2016.zip' -x '*presidential_election_contribs/2016/2016-full.csv.gz' -x '*regression/*' -x '*flight-data/raw/2015/*.csv*' -x '*images/*' -x '*uber-nyc/full/*'  -r  "$zip_file_name" data &&\
     zip -u "$zip_file_name"  data/images/*.txt data/images/*.html data/images/*.sh &&\
     mv "$zip_file_name"  "$me" &&  cd -

echo "## done."
