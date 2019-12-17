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

echo "## uploading to S3"
aws s3 sync --exclude '.git/*' --exclude 'nltk_data/*'  --exclude 'activity-data/*' --exclude '**/.DS_Store' --exclude '*.out' --exclude 'data/text/twinkle/*.data'  --exclude 'click-sream/json'  . s3://elephantscale-public/data/ --acl public-read

# zip up cats-dogs, so it is efficient to download from S3
zip -r cats-dogs.zip cat-dog/

./create-zip.sh

echo "## uploading to S3"
aws s3 sync --exclude '.git/*' --exclude 'text/twinkle/*.data'  --exclude 'nltk_data/*'  --exclude 'activity-data/*'  . s3://elephantscale-public/data/ --acl public-read
