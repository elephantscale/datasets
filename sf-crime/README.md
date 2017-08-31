# San Francisco Crime Dataset


## Introduction

This dataset contains incidents derived from SFPD Crime Incident Reporting system. The data ranges from 1/1/2003 to 5/13/2015. The training set and test set rotate every week, meaning week 1,3,5,7... belong to test set, week 2,4,6,8 belong to training set. 



## Data fields

 * Dates - timestamp of the crime incident
 * Category - category of the crime incident (only in train.csv). This is the target variable you are going to predict.
 * Descript - detailed description of the crime incident (only in train.csv)
 * DayOfWeek - the day of the week
 * PdDistrict - name of the Police Department District
 * Resolution - how the crime incident was resolved (only in train.csv)
 * Address - the approximate street address of the crime incident 
 * X - Longitude
 * Y - Latitude


## Data Sample

| Dates               | Category           | Descript                                    | DayOfWeek | PdDistrict | Resolution       | Address                       | X                 | Y        | 
|---------------------|--------------------|---------------------------------------------|-----------|------------|------------------|-------------------------------|-------------------|----------| 
| 2015-05-13 23:53:00 | WARRANTS           | WARRANT ARREST                              | Wednesday | NORTHERN   | "ARREST, BOOKED" | OAK ST / LAGUNA ST            | -122.425891675136 | 37.774   | | 5985956747          |                    |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:53:00 | OTHER OFFENSES     | TRAFFIC VIOLATION ARREST                    | Wednesday | NORTHERN   | "ARREST, BOOKED" | OAK ST / LAGUNA ST            | -122.425          |          | | 891675136           | 37.7745985956747   |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:33:00 | OTHER OFFENSES     | TRAFFIC VIOLATION ARREST                    | Wednesday | NORTHERN   | "ARREST, BOOKED" | VANNESS AV / GREENWICH ST     | -                 |          | | 122.42436302145     | 37.8004143219856   |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:30:00 | LARCENY/THEFT      | GRAND THEFT FROM LOCKED AUTO                | Wednesday | NORTHERN   | NONE             | 1500 Block of LOMBARD ST      | -122.426995       |          | | 32676599            | 37.80087263276921  |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:30:00 | LARCENY/THEFT      | GRAND THEFT FROM LOCKED AUTO                | Wednesday | PARK       | NONE             | 100 Block of BRODERICK ST     | -122.438737622    |          | | 757                 | 37.771541172057795 |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:30:00 | LARCENY/THEFT      | GRAND THEFT FROM UNLOCKED AUTO              | Wednesday | INGLESIDE  | NONE             | 0 Block of TEDDY AV           | -122.40325236     |          | | 121201              | 37.713430704116    |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:30:00 | VEHICLE THEFT      | STOLEN AUTOMOBILE                           | Wednesday | INGLESIDE  | NONE             | AVALON AV / PERU AV           | -122.423326976668 | 37.72513 | | 80403778            |                    |                                             |           |            |                  |                               |                   |          | | 2015-05-13 23:30:00 | VEHICLE THEFT      | STOLEN AUTOMOBILE                           | Wednesday | BAYVIEW    | NONE             | KIRKWOOD AV / DONAHUE ST      | -122.371274317441 | 37.72    | | 75640719518         |                    |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:00:00 | LARCENY/THEFT      | GRAND THEFT FROM LOCKED AUTO                | Wednesday | RICHMOND   | NONE             | 600 Block of 47TH AV          | -122.5081940311   |          | | 17                  | 37.776601260681204 |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 23:00:00 | LARCENY/THEFT      | GRAND THEFT FROM LOCKED AUTO                | Wednesday | CENTRAL    | NONE             | JEFFERSON ST / LEAVENWORTH ST | -122.41           |          | | 9087676747          | 37.8078015516515   |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 22:58:00 | LARCENY/THEFT      | PETTY THEFT FROM LOCKED AUTO                | Wednesday | CENTRAL    | NONE             | JEFFERSON ST / LEAVENWORTH ST | -122.41           |          | | 9087676747          | 37.8078015516515   |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 22:30:00 | OTHER OFFENSES     | MISCELLANEOUS INVESTIGATION                 | Wednesday | TARAVAL    | NONE             | 0 Block of ESCOLTA WY         | -122.4879830727   |          | | 77                  | 37.737666654332706 |                                             |           |            |                  |                               |                   |          | 
| 2015-05-13 22:30:00 | VANDALISM          | "MALICIOUS MISCHIEF, VANDALISM OF VEHICLES" | Wednesday | TENDERLOIN | NONE             | TURK ST / JONES ST            | -122              |          | | .41241426358101     | 37.7830037964534   |                                             |           |            |                  |                               |                   |          | 


## Additional Data

CASANF0URN.csv: ST Louis FRED data for Unemployment rate in San Francisco.
police-districts.csv: lookup table by police district
