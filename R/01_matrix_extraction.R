
#Whole GRN information extraction
rawdata <- read.csv("data/raw/raw_grns.csv")

#GRN extraction
GRNs <- rawdata[1:16]
GRNs[1, ] #Single GRN, the first
write.csv(GRNs, "data/processed/GRNs.csv")

#Each GRN (row) is converted into a matrix
GRN1 <- matrix(GRNs[1, ], ncol = 4, nrow = 4, byrow = T)
GRN1
class(GRNs[1, ])
class(GRN1)
dim(GRN1)
