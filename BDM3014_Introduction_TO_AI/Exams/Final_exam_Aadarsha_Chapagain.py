#!/usr/bin/env python
# coding: utf-8

# In[1]:


from sklearn.datasets import load_digits
import warnings
warnings.filterwarnings("ignore")
digits = load_digits()


# In[2]:


# Check the shape of data set and features of the dataset
print("Data Shape" , digits.data.shape)
print("Data Shape of label", digits.target.shape)
dir(digits)


# It shows that our data is 2d array which have 1797 number of row and 64 column. Those 64 are actual 8*8 representation of pixels.

# In[3]:


# Lets See the image that we are working with
import numpy as np 
import matplotlib.pyplot as plt
plt.figure(figsize=(20,4))
for index, (image, label) in enumerate(zip(digits.data[0:6], digits.target[0:6])):
  plt.subplot(1, 6, index + 1)
  plt.imshow(np.reshape(image, (8,8)) )
  plt.title('Training: %d' % label, fontsize = 18)


# Here We have just plotted six images and their labels

# In[4]:


# Lets split the data set into training and test data sets. 
from sklearn.model_selection import train_test_split
x_train, x_test, y_train, y_test = train_test_split(digits.data, 
                                                    digits.target, test_size=0.25, 
                                                    random_state=5)
# Here we have splitted the data set into 75 % training and 25% test dataset.


# ## Logistic Regression
# 

# In[5]:


# Create model of logistic regression and train the model
from sklearn.linear_model import LogisticRegression
model = LogisticRegression()
model.fit(x_train, y_train)


# In[6]:


#  lets predict in test data
predictions = model.predict(x_test)


# In[7]:


# Accuracy using Logistic Regression
score = model.score(x_test, y_test)
print(score)


# In[8]:


# Confusion matrix
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn import metrics
cm = metrics.confusion_matrix(y_test, predictions)
print(cm)


# Lets Try to use Different Algorithm Now

# ## k-nearest Neighbors

# In[9]:



from sklearn.neighbors import KNeighborsClassifier
k_model = KNeighborsClassifier(n_neighbors=3)


# In[10]:


k_model.fit(x_train, y_train)


# In[11]:


#  lets predict in test data
k_predictions = k_model.predict(x_test)


# In[12]:


# Accuracy using Logistic Regression
score = k_model.score(x_test, y_test)
print(score)


# In[13]:


# Confusion matrix
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn import metrics
k_cm = metrics.confusion_matrix(y_test, k_predictions)
print(k_cm)


# We have used two algorithms here Logistic Regression and K Nearest neighbour and we can see that k-nearest Neighbour give more accuracy of 99 % as compared to Logistic Regression which gave 96%. 
