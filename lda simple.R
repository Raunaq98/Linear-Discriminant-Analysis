# imported dataset as clean_houses

library(MASS)
model <- lda(Sold~.,
             data=clean_houses)

model
# returns group means and coefficients

probabilities<- predict(model,clean_houses)
probabilities$posterior
# gives probability of belonging to each class

lda_class <- probabilities$class


# confusion matrix
table(lda_class,clean_houses$Sold)
# lda_class   0   1
#         0 192  79
#         1  84 151

accuracy <- (192+151)/(192+79+84+151)
# [1] 0.6778656


