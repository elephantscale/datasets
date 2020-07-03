#!/bin/bash

## usage:
##      ./upload-to-s3.sh
## Env setup
##   1.  pip install awscli
##   2.  create a file '~/.aws/credentials' as follows
##      [default]
##      aws_access_key_id =  XXXXX
##      aws_secret_access_key = YYYYY

rm *.zip

./create-zip.sh

echo "## uploading to S3"
aws s3 sync --exclude '.git/*' --exclude 'nltk_data/*'  --exclude 'activity-data/*' --exclude '**/.DS_Store' --exclude '*.out' --exclude '**/_SUCCESS'  --exclude 'data/text/twinkle/*.data'  --exclude 'click-sream/json' --exclude 'uber-nyc/full/*' --exclude 'images/**/*' . s3://elephantscale-public/data/ --acl public-read

