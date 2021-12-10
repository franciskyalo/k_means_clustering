
#---------- about project ----------------------

# in this project we will use  orange data set to perform clustering

head(Orange)

library(tidyverse)

orange <- select(Orange, age, circumference)

head(orange)

# scale the data

orange <- scale(orange)

head(orange)


#--------clustering--------------

km.out <-kmeans(orange, 2, nstart = 20)

# use a  scree plot to check the optimal number of clusters
# using factoextra package

library(factoextra)
fviz_nbclust(orange, kmeans, method="wss")

km.out$cluster

# visualize the cluster assignment
plot(orange, col = (km.out$cluster + 1),
     main = "K-Means Clustering Results with K = 2",
     xlab = "",ylab ="",pch = 20, cex = 2)