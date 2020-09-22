data <- iris

# EDA
library(psych)
pairs.panels(data[1:4],
             gap=0,
             bg=c("red","green","blue")[data$Species],
             pch = 21,
             main = "scatterplot of iris data")

# DATA SPLIT
set.seed(555)
library(caTools)
sample<- sample.split(data$Species,SplitRatio = 0.6)
train<- subset(data, sample == TRUE)
test<- subset(data, sample == FALSE)

# MODEL
library(MASS)
iris_model <- lda( Species ~.,
                   data= train)

# PREDICTIONS

p<- predict(iris_model,train)  #using training data itself
table(train$Species,p$class)
#            setosa versicolor virginica
#setosa         30          0         0
#versicolor      0         29         1
#virginica       0          1        29
ldahist(data = p$x[,1],
        g = train$Species)          # LD1 separation

q<- predict(iris_model,test)   #using test data
table(test$Species,q$class)
#              setosa versicolor virginica
#setosa         20          0         0
#versicolor      0         19         1
#virginica       0          0        20
ldahist(data = q$x[,1],
        g = train$Species) 

