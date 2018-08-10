#!/bin/bash

## usage:
##      ./upload-to-s3.sh
## Env setup
##   1.  pip install awscli
##   2.  create a file '~/.aws/credentials' as follows
##      [default]
##      aws_access_key_id =  XXXXX
##      aws_secret_access_key = YYYYY


echo "## uploading to S3"
aws s3 sync --exclude '.git/*' --exclude 'nltk_data/*'  --exclude 'activity-data/*' --exclude '**/.DS_Store'  . s3://elephantscale-public/data/ --acl public-read


zip_file_name="datasets.zip"
rm -f *.zip
echo "## creating $$zip_file_name...."
zip -x '*.DS_Store*'  -x "*.log" -x '*.git*'  -x '*zip*'  -x '*metastore_db*' -x '*out' -x '*.ipynb_checkpoints*' -x '*not-using*' -x 'nltk_data/*' -x 'activity-data/*' -x 'presidential_election_contribs/2016.zip' -x 'presidential_election_contribs/2016/2016-full.csv.gz' -r "$zip_file_name" .
echo "## done."

echo "## uploading to S3"
aws s3 sync --exclude '.git/*' --exclude 'nltk_data/*'  --exclude 'activity-data/*'  . s3://elephantscale-public/data/ --acl public-read
