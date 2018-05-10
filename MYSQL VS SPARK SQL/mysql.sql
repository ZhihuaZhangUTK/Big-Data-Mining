#creat table hotel_10m
CREATE TABLE `hotel` (
  `date_time` datetime DEFAULT NULL,
  `site_name` int(11) DEFAULT NULL,
  `posa_continent` int(11) DEFAULT NULL,
  `user_location_country` varchar(10) DEFAULT NULL,
  `user_location_region` varchar(10) DEFAULT NULL,
  `user_location_city` varchar(10) DEFAULT NULL,
  `orig_destination_distance` float DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `is_mobile` int(11) DEFAULT NULL,
  `is_package` int(11) DEFAULT NULL,
  `channel` int(11) DEFAULT NULL,
  `srch_ci` date DEFAULT NULL,
  `srch_co` date DEFAULT NULL,
  `srch_adults_cnt` int(11) DEFAULT NULL,
  `srch_children_cnt` int(11) DEFAULT NULL,
  `srch_rm_cnt` int(11) DEFAULT NULL,
  `srch_destination_id` varchar(20) DEFAULT NULL,
  `srch_destination_type_id` int(11) DEFAULT NULL,
  `is_booking` int(11) DEFAULT NULL,
  `cnt` int(11) DEFAULT NULL,
  `hotel_continent` int(11) DEFAULT NULL,
  `hotel_country` int(11) DEFAULT NULL,
  `hotel_market` int(11) DEFAULT NULL,
  `hotel_cluster` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8

# copy table
create table hotel_100m like hotel_10m;
create table hotel_500m like hotel_10m;
create table hotel_1g like hotel_10m;
create table hotel_2g like hotel_10m;


# load data
LOAD DATA LOCAL INFILE 'C:/Users/User/Desktop/finalproject/mysql/hotel_10m_.csv' INTO TABLE hotel_10m FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE 'C:/Users/User/Desktop/finalproject/mysql/hotel_100m_.csv' INTO TABLE hotel_100m FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE 'C:/Users/User/Desktop/finalproject/mysql/hotel_500m_.csv' INTO TABLE hotel_500m FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE 'C:/Users/User/Desktop/finalproject/mysql/hotel_1g_.csv' INTO TABLE hotel_1g FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA LOCAL INFILE 'C:/Users/User/Desktop/finalproject/mysql/hotel_2g_.csv' INTO TABLE hotel_2g FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';


#### run queries ####
# 10M dataset
SELECT * FROM hotel_10m WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07';
SELECT * FROM hotel_10m WHERE srch_ci in ('2014-05-04', '2014-05-07', '2014-05-10');
Select COUNT(*) from hotel_10m;
SELECT DISTINCT user_id FROM hotel_10m;
SELECT is_mobile, COUNT(*) FROM hotel_10m GROUP BY is_mobile;
SELECT user_id, orig_destination_distance FROM hotel_10m WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07' ORDER BY orig_destination_distance;
SELECT user_location_country, AVG(orig_destination_distance) FROM hotel_10m GROUP BY user_location_country;


# 100M dataset
SELECT * FROM hotel_100m WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07';
SELECT * FROM hotel_100m WHERE srch_ci in ('2014-05-04', '2014-05-07', '2014-05-10');
Select COUNT(*) from hotel_100m;
SELECT DISTINCT user_id FROM hotel_100m;
SELECT is_mobile, COUNT(*) FROM hotel_100m GROUP BY is_mobile;
SELECT user_id, orig_destination_distance FROM hotel_100m WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07' ORDER BY orig_destination_distance;
SELECT user_location_country, AVG(orig_destination_distance) FROM hotel_100m GROUP BY user_location_country;

# 500M dataset
SELECT * FROM hotel_500m WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07';
SELECT * FROM hotel_500m WHERE srch_ci in ('2014-05-04', '2014-05-07', '2014-05-10');
Select COUNT(*) from hotel_500m;
SELECT DISTINCT user_id FROM hotel_500m;
SELECT is_mobile, COUNT(*) FROM hotel_500m GROUP BY is_mobile;
SELECT user_id, orig_destination_distance FROM hotel_500m WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07' ORDER BY orig_destination_distance;
SELECT user_location_country, AVG(orig_destination_distance) FROM hotel_500m GROUP BY user_location_country;

# 1G dataset
SELECT * FROM hotel_1g WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07';
SELECT * FROM hotel_1g WHERE srch_ci in ('2014-05-04', '2014-05-07', '2014-05-10');
Select COUNT(*) from hotel_1g;
SELECT DISTINCT user_id FROM hotel_1g;
SELECT is_mobile, COUNT(*) FROM hotel_1g GROUP BY is_mobile;
SELECT user_id, orig_destination_distance FROM hotel_1g WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07' ORDER BY orig_destination_distance;
SELECT user_location_country, AVG(orig_destination_distance) FROM hotel_1g GROUP BY user_location_country;

# 2G dataset
SELECT * FROM hotel_2g WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07';
SELECT * FROM hotel_2g WHERE srch_ci in ('2014-05-04', '2014-05-07', '2014-05-10');
Select COUNT(*) from hotel_2g;
SELECT DISTINCT user_id FROM hotel_2g;
SELECT is_mobile, COUNT(*) FROM hotel_2g GROUP BY is_mobile;
SELECT user_id, orig_destination_distance FROM hotel_2g WHERE srch_ci = '2014-05-04' AND srch_co='2014-05-07' ORDER BY orig_destination_distance;
SELECT user_location_country, AVG(orig_destination_distance) FROM hotel_2g GROUP BY user_location_country
