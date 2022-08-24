#GRN diversity analysis
library(plyr)

singletopologies <- read.csv("output/singletopologies.csv")

numbinteracGRN <- ddply(abs(duplicatedcircuits), .(MA,AA,BA,CA,MB,AB,BB,CB,MC,AC,BC,CC), sum)

singletopologies[ , -1]

GRNScomplexity <- transform(abs(duplicatedcircuits), sum = rowSums(abs(duplicatedcircuits)))
complexitylist <- GRNScomplexity[ , length(GRNScomplexity)] #List of complexity value per type of circuit
class(complexitylist)

#Histogram
png(file = "figs/complexityhistogram.png")
# Create the histogram.
hist(complexitylist, xlab = "Weight",col = "darkcyan")

dev.off()
