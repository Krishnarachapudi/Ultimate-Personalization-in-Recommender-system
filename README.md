# Ultimate-Personalization-in-Recommender-system

## Introduction:
Personalization is the key to marketing and reviews and rating play an important role in understanding the products a customer likes/dislikes. Reviews give us a better understanding of customer preferences. Using natural language processing (via AWS Comprehend), we extract key phrases and the sentiment pertaining to various customer reviews. This can be used to identify potential upselling opportunities and can help identify pain-points in a customer’s journey.



## Process and Technologies Used:
### a.	AWS S3: 
The dataset containing Amazon product reviews is stored in S3, from where the data is fetched. After the sentiment and key phrases are extracted, the processed data is stored back to S3.
### b.	AWS Glue:
A Glue ETL job is run to fetch the data from S3, process it via Comprehend and load it back to S3. The python code for the same is provided in the repository
### c.	AWS Comprehend:
Comprehend is a machine learning package that helps process text and extract the sentiment, key phrases, and entities. This package is called using Glue in the ETL process
### d.	AWS Athena:
Query editor that connects to the processed data in S3 and helps write SQL queries to fetch and query data. The text of each key phrase and entity is extracted on Athena. The SQL code is provided in the repository
### e.	AWS QuickSight:
QuickSight is connected to Athena and the processed data is visualized
![alt text her](https://github.umn.edu/harid011/Ultimate-Personalization-in-Recommender-system/blob/master/flow_diagrams.JPG)
