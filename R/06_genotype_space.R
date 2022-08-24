library(igraph)

singletopologies <- read.csv("output/singletopologies.csv")
singletopologies <- singletopologies[2:12]

sum(singletopologies[78, ] != singletopologies[2,])

mutationalmatrix <- matrix(0, length(singletopologies[, 1]), length(singletopologies[, 1]))

for (i in seq(length(singletopologies[, 1]))){
  for (j in seq(length(singletopologies[, 1]))){
    if(i==j){
      print(i)
      next
    }
    if (sum(singletopologies[i, ] != singletopologies[j, ]) <2){
      mutationalmatrix[i, j] <- 1
    }
    
  }
}


sum(mutationalmatrix)



#I create a netwotk of circuits connected by edges if they have up to two differences 

genotspace <- graph_from_adjacency_matrix(mutationalmatrix , mode = 'undirected', diag=F)
plot(genotspace)
