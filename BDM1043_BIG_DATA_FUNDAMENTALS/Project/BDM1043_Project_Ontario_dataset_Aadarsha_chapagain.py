#!/usr/bin/env python
# coding: utf-8

# With the covid data set available from goverment of canada ontario, we will try to derive following insights from it
# 1. Find out the case recorded in a area in specific day
# 2. In any group what are the cases recorded so far
# 3. Find out which group has the maximum and minimum number of out breaks among outbreak groups
# 4. Find out the public health unit with maximum and minimum recorded cases.
# 5. Find out how the cases spiked from 2020 to 2021
# 6. Find out the monthly trend in year 2021
# 
# 

# In[1]:


import pandas as pd
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)


# In[2]:



# Load the data available through the path and explore the dataset.
url ='https://data.ontario.ca/dataset/5472ffc1-88e2-48ca-bc9f-4aa249c1298d/resource/36048cc1-3c47-48ff-a49f-8c7840e32cc2/download/ongoing_outbreaks_phu.csv'
df_raw = pd.read_csv(url)


# In[3]:


df_raw.shape 
df_raw.head()


# We can see that there are five columns available and these column represents
#  Date: Date in which cases were recoreded
#  phu_name: name of the public health unit in which the cases were recorded
#  phu_num: Number Assigned to the public health unit.
#  outbreak_group: Places were the covid outbreak occured
#  number_ongoing_outbreaks: number of recorded covid cases

# In[4]:


# lets see  how many times the cases were reported in each public health unit that is how many times the phu appears in the dataset
df_count= df_raw['phu_name'].value_counts()
df_count


# ## Insight 1: Find out the case recorded in a area in specific day
# 

# In[5]:


# Find out  out breaks is specific month and city.
df_filter_date = df_raw.loc[df_raw['date'] == '2020-11-01']
df_filter_city =df_filter_date.loc[df_filter_date['phu_name'] == 'YORK REGION']
df_filter_city_totaL_outbreaks = df_filter_city['number_ongoing_outbreaks'].sum()
print(" Total outbreak in YORK REGION  in the date 2020-11-01 is:",  df_filter_city_totaL_outbreaks)
df_filter_city


# Here we can see the out break in York Region including all group was 62 and the divided data as above, We can see the aggregated data for any region at any date. 

# In[6]:


# What are the places Categorized for outbreak.
df_outbreak_group= df_raw['outbreak_group'].unique()
df_outbreak_group


# ## Insight 2 : In any group what are the cases recorded so far 

# In[7]:


outbreaks_by_region =df_raw[df_raw['outbreak_group'] =='1 Congregate Care' ].sum()
outbreaks_by_region


# Here we have seen that in 1 Congregate care there has been total 52037 number of out breaks recorded similary we can achieve the insight for any other places that are workplace, Education, living and other.

# ## Insight 3:  Find out which group has the maximum  and minimum  number of out breaks among outbreak groups 

# In[8]:



import matplotlib.pyplot as plt
import seaborn as sns
plt.figure(figsize=(8,12))
plot = sns.barplot(df_raw['number_ongoing_outbreaks'], df_raw['outbreak_group'])


# Here we can see that congregate care recorded the highest hits and other/unknown sector have minimum outbreak.

# ## Insights 4: Find out the public health unit with maximum and minimum recorded cases.

# In[9]:


# Find out which phu has the maximun and minimum out breaks
import matplotlib.pyplot as plt
import seaborn as sns
plt.figure(figsize=(8,10))
plot = sns.barplot(df_raw['number_ongoing_outbreaks'], df_raw['phu_name'])


# From the graph it is cleary seen that TORONTO has the maximum cases recorded and NORTH BAY PARRY SOUND DISTRICT has the least outbreak recorded.

# In[10]:


#  lets grab the  total number of out breaks in a region
df_total_city = df_raw[df_raw['phu_name'] =='NORTH BAY PARRY SOUND DISTRICT' ].sum()
df_total_city


# Here we see that NORTH BAY PARRY SOUND DISTRICT has 371 of the recorded cases .

# ## Insight 5 Find out how the cases spiked from 2020 to 2021

# To do that, it would be easier if we had seperate month and year column so lets do that

# In[11]:


# add new column year and month for ease of processing 
df_raw['year'] = pd.DatetimeIndex(df_raw['date']).year
df_raw['month'] = pd.DatetimeIndex(df_raw['date']).month
df_raw


# In[12]:


# How the cases spike from 2020 to 2021
df_yearly_group = df_raw.groupby(['year'])['number_ongoing_outbreaks'].sum()
df_yearly_group.describe
df_yearly_group.plot()


# We can see the number escalating from 40000 to 140000 here.

# ## Insights 6: Find out the monthly trend in year 2021

# In[13]:


# See the monthly trend for 2021 lets filter out the data for year 2021 and group by months to see the trend
df_monthly = df_raw[df_raw['year'] == 2021]
df_monthly_group = df_monthly.groupby(['month'])['number_ongoing_outbreaks'].sum()
df_monthly_group.describe
df_monthly_group.plot()


# We can see the decreasing trend in from the begining of 2021 to end. 
