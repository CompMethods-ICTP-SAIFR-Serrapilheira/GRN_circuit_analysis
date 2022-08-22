#Similarity analysis

library(cluster)

singletopologies <- read.csv("output/singletopologies.csv")
singletopologies <- singletopologies[2:12] #only the vector of interactions


distances <- vegdist(singletopologies)

b_cluster <- hclust(distances, method = "average")
plot(b_cluster)


daiGRN <- daisy(singletopologies)
clustersGRNS <- agnes(daiGRN, metric = "manhattan")

plot(clustersGRNS, which.plots = 2)
