
**Oracle MySQL**
- Oracle MySQL is an open-source relational database management system (RDBMS). It was owned and sponsored by a single for-profit firm, the Swedish company MySQL AB, now owned by Oracle Corporation. MySQL has numerous features, such as a broad subset of ANSI SQL 99, as well as extensions, Cross-platform support, Stored procedures, using a procedural language that closely adheres to SQL/PSM, Triggers, Cursors, Updatable views, ACID compliance when using InnoDB and NDB Cluster Storage Engines, SSL support, Query caching (Wikipedia, 2018b). MySQL has recently released its 8.0 version, but in this study, we used the MySQL 5.7.

**Spark SQL**
- Spark SQL is a component on top of Spark Core that introduced a data abstraction called DataFrames, which provides support for structured and semi-structured data. Spark SQL provides a domain-specific language (DSL) to manipulate DataFrames in Scala, Java, or Python. It also provides SQL language support, with command-line interfaces and ODBC/JDBC server. Many good features can be found in Spark SQL, such as integrated, unified data access, hive compatibility, standard connectivity, and scalability, which makes Spark SQL much efficient and popular. The Spark version used in this study is Spark 2.2.1 released on December 1st, 2017.

**data**
The dataset was downloaded from kaggle (https://www.kaggle.com), which is a platform for predictive modeling and analytics competitions in which statisticians and data miners compete to produce the best models for predicting and describing the datasets uploaded by companies and users (Wikipedia, 2018a). The dataset is based on the Expedia search logs, including what customers searched for, how they interacted with search results (click/book), whether the search result was a travel package or not (Expedia, 2016). Table 1 presents the detail information about data fields. The total dataset is about 3.8 GB and is stored in the form of CSV file. To make a comprehensive comparison, we divided the dataset into different sizes, like 10 MB, 100MB, 500 MB, 1G, 2G, so that we can compare the performance in the different scale. 

Table 2. Datasets description
|Dataset | Size | Number of records|
| --- | --- | --- |
|1 | 10 MB | 94,000 |
|2 | 100 MB | 940,000 |
|3 | 500 MB | 4,650,000 |
|4 |1 GB | 9,300,000 |
|5 | 2 GB | 18,600,000 |
