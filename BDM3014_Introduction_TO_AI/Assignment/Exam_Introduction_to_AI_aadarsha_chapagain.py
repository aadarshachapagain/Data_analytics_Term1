#!/usr/bin/env python
# coding: utf-8

# In[489]:


from matplotlib import pyplot as plt
import numpy as np
import pandas as pd
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split
from sklearn import metrics
from sklearn.metrics import classification_report


# 1.We will use  features to distinguish  whether the people  survived or not. Load the dataset from “titanic1”, identify the target variable. Split the dataset in train-test with 20% of the data kept aside for testing.

# In[490]:


df_titanic = pd.read_csv("titanic1.csv")
df_titanic.head()


# In[491]:


#Drop the Name feture since it doenot have any impact on the chances of survival.
clean_df = df_titanic.drop(['Name','Parents/Children Aboard'], axis=1)
clean_df.head()


# Since the Sex feature is not numeric here lets map it to it numeric data 0 and 1.

# In[492]:


clean_df["Sex"] = clean_df["Sex"].map({"male":"0", "female":"1"})
clean_df.head()


# Take all rows and columns from 1 to 6 as X (features) and Survived Column as target

# In[493]:


X = clean_df.iloc[:,1:6]
Y = clean_df["Survived"]
X.head(10)


# 
# Split the data set into training and testing data set (80/20) with ramdom_state or suffling factor(beforing apllying split) of 6. Try different random_state factor.

# In[494]:


train_x, test_x, train_y, test_y = train_test_split(X, Y,test_size = 0.20, random_state=6) 
test_x.head()


# Initiate a new Logistic Regression Object. And train the model using .fit method.

# In[495]:



lg_model = LogisticRegression()
lg_model.fit(train_x, train_y)


# Lets apply the model prediction in test data 

# In[497]:



predicted_data = lg_model.predict(test_x)


# the accuracy of model to be 0.84 that is 84%

# In[498]:


metrics.accuracy_score(predicted_data, test_y)


# In[499]:


# We can see the report with
report = classification_report(test_y, predicted_data)
print(report)


# In[500]:


# The correlation matrix to find out which variable are mostly co-related
corr = clean_df.corr()
corr


# In[501]:


clean_more_df = df_titanic.drop(['Name','Parents/Children Aboard'], axis=1)
clean_more_df["Sex"] = clean_more_df["Sex"].map({"male":"0", "female":"1"})
clean_more_df.head()


# Use Decisio tree algorithm to train the model using .fit model.

# In[502]:



from sklearn import tree
model = tree.DecisionTreeClassifier(random_state = 4)
model.fit(train_x, train_y)
train_x.head()


# In[503]:


#lets predict the test data and measure the accuracy
y_pred_test = model.predict(test_x)


# In[504]:


from sklearn.metrics import accuracy_score
print('Accuracy score for test data is:', accuracy_score(test_y,y_pred_test))


# In[505]:


# We can see the report with
report = classification_report(test_y, y_pred_test)
print(report)


# In[ ]:




