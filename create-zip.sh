#!/bin/bash


zip_file_name="data.zip"
rm -f *.zip
echo "## creating $zip_file_name...."

cd .. && rm -f data && ln -sf ./datasets ./data && zip -x '*.DS_Store*'  -x '*click-stream/json*' -x "*.log" -x '*.git*'  -x '*zip*' -x '*.data' -x '*metastore_db*' -x '*out' -x '*.ipynb_checkpoints*' -x '*not-using*' -x '*nltk_data/*' -x '*activity-data/*' -x '*presidential_election_contribs/2016.zip' -x '*presidential_election_contribs/2016/2016-full.csv.gz' -x '*regression/*' -r "$zip_file_name" data && mv $zip_file_name  datasets/ &&  cd -

echo "## done."
