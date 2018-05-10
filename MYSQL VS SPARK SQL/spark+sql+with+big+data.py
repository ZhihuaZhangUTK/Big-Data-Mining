
# coding: utf-8

# In[1]:

import pandas as pd
from pyspark.sql.types import StringType
from pyspark import SQLContext
import random
import time
import os


# In[2]:

sqlContext = SQLContext(sc)


# # load data into file

# In[13]:

def run_time(filename):
    df = spark.read.csv(filename, header=True)
    df.createOrReplaceTempView("hotel")
    get_ipython().magic('time sqlContext.sql("SELECT * FROM hotel WHERE srch_ci = \'2014-05-04\' AND srch_co=\'2014-05-07\'").show()')
    get_ipython().magic('time sqlContext.sql("SELECT * FROM hotel WHERE srch_ci in (\'2014-05-04\', \'2014-05-07\', \'2014-05-10\')").show()')
    get_ipython().magic('time sqlContext.sql("Select COUNT(*) from hotel").show()')
    get_ipython().magic('time sqlContext.sql("SELECT DISTINCT user_id FROM hotel").show()')
    get_ipython().magic('time sqlContext.sql("SELECT is_mobile, COUNT(*) FROM hotel GROUP BY is_mobile").show()')
    get_ipython().magic('time sqlContext.sql("SELECT user_id, orig_destination_distance FROM hotel WHERE srch_ci = \'2014-05-04\' AND srch_co=\'2014-05-07\' ORDER BY orig_destination_distance").show()')
    get_ipython().magic('time sqlContext.sql("SELECT user_location_country, AVG(orig_destination_distance) FROM hotel GROUP BY user_location_country").show()')


# In[45]:

run_time(r'mysql\hotel_10m_.csv')


# In[44]:

run_time(r'mysql\hotel_100m_.csv')


# In[43]:

run_time(r'mysql\hotel_500m_.csv')


# In[42]:

run_time(r'mysql\hotel_1g_.csv')


# In[11]:

run_time(r'mysql\hotel_2g_.csv')


# In[32]:

df = spark.read.csv(r'mysql\hotel_2g_.csv')

