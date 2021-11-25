#!/usr/bin/env python
# coding: utf-8

# In[3]:


from sklearn.datasets import load_boston
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.linear_model import LinearRegression


# In[6]:


model=load_boston()
model.keys()


# In[5]:


X=model.data
Y=model.target


# In[7]:


model.data[0]


# In[9]:


# Train and split data
from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test=train_test_split(X,Y,test_size=0.2, random_state=0) # 0.2 splits data into 80% and 20%


# In[10]:


x_train.shape


# In[11]:


x_test.shape


# In[13]:


# Creating Linear Regression
reg = LinearRegression()
reg.fit(x_train, y_train)


# In[17]:


print('Intercept:{} \n Coeffiecient: {}'.format(reg.intercept_, reg.coef_))


# In[18]:


#prediction on test data
predictions=reg.predict(x_test)


# In[20]:


#plot between prediction and test label
plt.scatter(y_test , predictions)


# In[ ]:




