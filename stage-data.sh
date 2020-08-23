#!/bin/bash


dest_dir="out"
rm -rf $dest_dir

rsync -av  -W  --delete --delete-excluded  \
          --exclude '*.data'  \
          --exclude '*.log'  \
          --exclude '*.out'  \
          --exclude '*.sh'  \
          --exclude '*.zip'  \
          --exclude '*nltk-data*'  \
          --exclude '*not-using*'  \
          --exclude '.DS_Store'  \
          --exclude '.git' \
          --exclude '.idea'  \
          --exclude '.ipynb_checkpoints'  \
          --exclude 'activity-data' \
          --exclude 'binary-classification' \
          --exclude 'click-stream/json' \
          --exclude 'clustering' \
          --exclude 'flight-data/raw/2015/*.csv*' \
          --exclude 'images' \
          --exclude 'multiclass-classification' \
          --exclude 'presidential_election_contribs/2016.zip' \
          --exclude 'presidential_election_contribs/2016/2016-full.csv.gz' \
          --exclude 'simple-ml-integers' \
          --exclude 'uber-nyc/full/' \
          .   $dest_dir/

