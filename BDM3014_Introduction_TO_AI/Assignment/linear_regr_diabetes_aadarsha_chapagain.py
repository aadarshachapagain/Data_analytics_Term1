#!/usr/bin/env python
# coding: utf-8

# In[1]:


import matplotlib.pyplot as plt
import numpy as np
from sklearn import datasets, linear_model
from sklearn.metrics import mean_squared_error, r2_score
from sklearn.model_selection import train_test_split
from sklearn.datasets import load_diabetes


# In[2]:


# Load the diabetes dataset, Diabetes data set is inbuilt dataset in sklearn
diabetes_X, diabetes_y = datasets.load_diabetes(return_X_y=True)
diabetes_X.view()


# In[3]:


# Use only one feature
#diabetes_X = diabetes_X[:, np.newaxis, 2]


# In[13]:


# Split the data into training/testing sets(80/20)
diabetes_X_train = diabetes_X[:-20]
diabetes_X_test = diabetes_X[-20:]


# In[14]:


# Split the targets into training/testing sets(80/20)
diabetes_y_train = diabetes_y[:-20]
diabetes_y_test = diabetes_y[-20:]


# In[15]:


# Create linear regression object
regr = linear_model.LinearRegression()


# In[16]:


# Train the model using the training sets
regr.fit(diabetes_X_train, diabetes_y_train)


# In[17]:


# Make predictions using the testing set
diabetes_y_pred = regr.predict(diabetes_X_test)


# In[20]:


# The coefficients
print("Coefficients: \n", regr.coef_)
# The mean squared error
print("Mean squared error: %.2f" % mean_squared_error(diabetes_y_test, diabetes_y_pred))
# The coefficient of determination: 1 is perfect prediction
print("Coefficient of determination: %.2f" % r2_score(diabetes_y_test, diabetes_y_pred))


# In[36]:


# Plot outputs
plt.scatter(diabetes_y_test, diabetes_y_pred, color="black")
#plt.plot(diabetes_y_test, diabetes_y_pred, color="blue")


# In[ ]:




