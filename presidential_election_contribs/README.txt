for data description see 'about-data.txt'

2016-full.csv - has 7Million+ records
To download data from Amazon S3
        ./download-data.sh

to select random lines from teh full file
        $   shuf -n 10000 2016.csv > 2016-10k.csv
