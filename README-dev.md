# For Developers and Curators

The data is also hosted at Amazon S3 : 
s3://elephantscale-public/data/

https://s3.amazonaws.com/elephantscale-public/data/

To upload the data to S3 execute

```bash
$    ./upload-to-s3.sh
```

```bash
# To create a zip archive of data
$   ./create-zip.sh

# To upload to S3
$   ./upload-to-s3.sh
```

## Sampling from CSV file

```bash
# extract header first
# n = 1 takes first line
$   head -n 1 a.csv > b.csv

# now sample rest of data 
# tail -n +2 starts from 2nd line
# shuf -n 10 : randomly selects 10 lines
# we are appending to b.csv
$   tail -n +2  a.csv | shuf  -n 10  >> b.csv
```

to select random lines from the full file

```bash
$   shuf -n 10000 2016.csv > 2016-10k.csv
```