# datasets

These are some datasets for our labs.

Also hosted in Amazon S3 here:
https://s3.amazonaws.com/elephantscale-public/data/data.zip

- [AudioScrobble](./audioscrobble/README.md)
- [Cars](./cars/README.md)
- [Churn](./churn/README.md)
- [ClickStream](./click-stream/README.md)
- [College Admissions](./college-admissions/README.md)
- [Commodities](./commodities/README.md)
- [Credit Card default](./credit-card-default/README.md)
- [Diabetes data](diabetes/README.md)
- [Economic Numbers](./econ/README.md)
- [Election Contributions](./election/README.md)
- [House Prices](./house-prices/README.md)
- [IMDB Metadata](./imdb/README.md)
- [JSON Data](./json/README.md)
- [Misc](./misc/README.md)
- [Morgage Applications](./mortgage-applications/README.md)
- [MovieLens Recommendations](./movielens/README.md)
- [Netflix Recommendations](./netflix/README.md)
- [NYC Flight Delays](./nycflights13/README.md)
- [NYSE](./nyse/README.md)
- [Presidential Election Contributions](./presidential_election_contribs/README.md)
- [Propser Loan](./prosper-loan/README.md)
- [SF Crime](./sf-crime/README.md)
- [Spam SMS](./spam/README.md)
- [Spark Commit Logs](./spark-commits/README.md)
- [Stock Market Data](./stocks/README.md)
- [Text](./text/README.md)
- [Tips](./tips/README.md)
- [Uber data for New York City](./uber-nyc/README.md)
- [Walmart Trip Types](./walmart-triptype/README.md)
- [Zipcodes](./zipcodes/README.md)

# Handy Commands

To create a zip archive of data
    $   ./create-zip.sh

To upload to S3
    $   ./upload-to-s3.sh*

to select random lines from the full file
        $   shuf -n 10000 2016.csv > 2016-10k.csv
        
   
# Places with good datasets

- [UCI Machine Learning Datasets](https://archive.ics.uci.edu/ml/datasets.html)
![](images/ucilogo.gif)
