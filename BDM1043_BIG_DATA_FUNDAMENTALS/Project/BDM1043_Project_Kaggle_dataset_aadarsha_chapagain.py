#!/usr/bin/env python
# coding: utf-8

# Project - Data Insight - Covid data using Python Pandas

#  The data set is obtained from the source:
# https://www.kaggle.com/sudalairajkumar/novel-corona-virus-2019-dataset
# The objective of the project is too draw some insights from the data using pandas.
# Insights to acheive
# 1. Obtain daily data of confirmed and death cases
# 2. Total Number of deaths in each country
# 3. Data for a specific day and country
# 4. Most recent data for user decided country

# In[1]:


import pandas as pd


# In[2]:


# Here we are loading two data sets which have the confirmed and deaths numbers
df_conf      = pd.read_csv("time_series_covid_19_confirmed.csv")
df_death     = pd.read_csv("time_series_covid_19_deaths.csv")

# Check if both dataset have same size
print(df_conf.shape)
print(df_death.shape)


# ## DATA Exploration

# In[3]:


# Data Exploration
df_conf


# It is seen that the data frame consist of date listed as columns and the values as confirmed cases.
# in case of 'df_death'  it also consist of date listed as columns and the values as death cases. 

# In[4]:


# sort the value according to the province/State  and country/Region since these attributes are string,
# it will get sorted alphabetically
# index of these dataframe are dropped after sorting.
df_conf = df_conf.sort_values(
    by=['Province/State','Country/Region'])
df_conf = df_conf.reset_index(drop=True)
df_death = df_death.sort_values(
    by=['Province/State','Country/Region'])
df_death = df_death.reset_index(drop=True)


# In[5]:


# check if two dfs columns are the same
print(df_conf[["Province/State","Country/Region"]].equals(
      df_death[["Province/State","Country/Region"]]))
df_conf


# In[6]:


# take all the dates columns from column  4 to the end and check if both of the data frames have the same value(same date)
dates_conf = df_conf.columns[4:]
dates_death = df_death.columns[4:]
if dates_conf.equals(dates_death): 
    print("Dates are the same")
dates_conf


# ## Data Transformation

# In[7]:


# change the date column into rows with the name of the column date and its value under confirmed using melt function
# transform or melt dates column to single column containing date and its value in another column
df_conf_melted = df_conf.melt(id_vars=['Province/State', 
                              'Country/Region', 'Lat', 'Long'], 
                              value_vars=dates_conf, 
                              var_name='Date',
                              value_name='Confirmed')

df_death_melted = df_death.melt(id_vars=['Province/State', 
                                'Country/Region', 'Lat', 'Long'],                                
                                value_vars=dates_death,
                                var_name='Date', 
                                value_name='Deaths')


# In[8]:


df_death_melted


# In[9]:


# check if both the column have same shape
print(df_conf_melted.shape)
print(df_death_melted.shape)


# In[10]:


df_conf_melted


# In[11]:


# we need both colums death and confirmed case in the same data set do lets combine them
df_combined = pd.concat([df_conf_melted, 
                         df_death_melted["Deaths"]], 
                         axis = 1, 
                         sort = False)
df_combined


# ## Missing Values

# In[12]:


# calculate the death percentage among the confirmed cases.
df_combined["Percentage"] = df_combined["Deaths"]/df_combined["Confirmed"]


# In[13]:


df_combined


# We can see the percentage as NAN it must be divideby zero error so as a part of cleaning process lets fill the NAN with 0.

# In[14]:


df_combined.fillna(0, inplace=True)
df_combined


# Check the data types of all attributes

# In[15]:


df_combined.dtypes


# In[16]:


# convert the date attribute to the datetime datatype
import datetime
def format_time(datetime_str):    
    d = datetime.datetime.strptime(datetime_str, '%m/%d/%y')    
    return d.date()
df_combined["Date"] = df_combined["Date"].apply(format_time)
df_combined


# In[17]:


df_combined.dtypes


# ## Insight1
# ### Now lets out first objective : Daily data of confirmed and death cases

# In[18]:


grouped_by_date = df_combined.groupby("Date")
for date, group in grouped_by_date:
    print("==========")
    print(date)
    print("==========")
    print(group[["Province/State","Country/Region", "Confirmed", 
        "Deaths"]])


# ## Insight 2: Total Death in each Country

# In[19]:


df_death_by_Country = df_combined.groupby(["Country/Region"]).aggregate({'Confirmed': 'sum', 'Deaths': 'sum'})
df_death_by_Country


# ## Insight3: Data for specific Date and Country/Region

# In[20]:


df_daily = df_combined.groupby(["Date","Country/Region"]).aggregate(
    {'Confirmed': 'sum', 'Deaths': 'sum'})
df_day = df_daily.loc[format_time('3/22/20'),'Canada']
df_day


# ## Insight 4: Most recent data for user Decided Country

# In[21]:


most_recent_date = df_combined['Date'].max()
df_most_recent = df_daily.loc[most_recent_date,:]
df_most_confirmed_recent_sorted = df_most_recent.sort_values(by="Confirmed", ascending=False)
df_most_confirmed_recent_sorted.head(10)


# In[22]:


df_most_recent[df_most_recent.index == input("Enter the country name: ")]

