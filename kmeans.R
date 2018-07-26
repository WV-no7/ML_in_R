#kmeans algorithm using kmeans()
#Dataset used - Iris
#Objective - classify Species based on petal length and width using kmeans algorithm 



#Import library of standard datasets
library(datasets)
print(head(iris))

#import ggplot2
library(ggplot2)

#plot the graph using ggplot(data = Dataset, aes(x, y, ), ...,)
#geom_points() creates scatter points.
print(ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point())

set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)

print(irisCluster)

print("Comparing Cluster with Species")
print(table(irisCluster$cluster, iris$Species))

irisCluster$cluster <- as.factor(irisCluster$cluster)

#Final plot with cluster
print("Final plot with cluster")
print(ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + geom_point())