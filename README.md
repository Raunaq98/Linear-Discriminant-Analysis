# Linear Discriminant Analysis

**Logistic regression** is a classification algorithm traditionally limited to only two-class classification problems.
If you have more than two classes then **Linear Discriminant Analysis** is the preferred linear classification technique.

Linear Discriminant Analysis all the problems faced by logistic regression and is the go-to linear method for multi-class classification problems. 
Even with binary-classification problems, it is a good idea to try both logistic regression and linear discriminant analysis.

# Assumptions

    1. That your data is Gaussian, that each variable is is shaped like a bell curve when plotted.
    2. That each attribute has the same variance, that values of each variable vary around 
    the mean by the same amount on average.
    
# Working

Suppose we have two sets of data points belonging to two different classes that we want to classify. Asssume that when the data points are plotted 
on the 2D plane, there’s no straight line that can separate the two classes of the data points completely. Hence, in this case, 
LDA is used which reduces the 2D graph into a 1Dgraph in order to maximize the separability between the two classes.

STEP 1 : Calculate the separability between different classes(i.e the distance between the mean of different classes) also called as **between-class variance**

STEP 2 : Calculate the distance between the mean and sample of each class,which is called the **within class variance**

STEP 3 : Construct the lower dimensional space which **maximizes the between class variance** and **minimizes the within class variance**
