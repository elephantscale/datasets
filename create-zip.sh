#!/bin/bash


zip_file_name="datasets.zip"
rm -f *.zip
echo "## creating $zip_file_name...."

cd .. && zip -x '*.DS_Store*'  -x "*.log" -x '*.git*'  -x '*zip*' -x '*.data' -x '*metastore_db*' -x '*out' -x '*.ipynb_checkpoints*' -x '*not-using*' -x '*nltk_data/*' -x '*activity-data/*' -x '*presidential_election_contribs/2016.zip' -x '*presidential_election_contribs/2016/2016-full.csv.gz' -r "$zip_file_name" datasets && mv $zip_file_name  datasets/ &&  cd -

#zip -x '*.DS_Store*'  -x "*.log" -x '*.git*'  -x '*zip*' -x '*.data' -x '*metastore_db*' -x '*out' -x '*.ipynb_checkpoints*' -x '*not-using*' -x 'nltk_data/*' -x 'activity-data/*' -x 'presidential_election_contribs/2016.zip' -x 'presidential_election_contribs/2016/2016-full.csv.gz' -r "$zip_file_name" .

echo "## done."
