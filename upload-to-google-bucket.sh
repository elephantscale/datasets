gsutil rsync -r -n \
        -x '.git/*' \
        ./    gs://elephantscale-public/data/
