#Start of the program:
# Library required for fviz_cluster function
library(factoextra)
# To load the dataset:
dtf <- mtcars
# For values that are NA, we omit them
dtf <- na.omit(dtf)
# To scale the dataset:
dtf <- scale(dtf)
# Getting output as a PNG file
png(file = "PLOT_Ak3.png")
kmns <- kmeans(dtf, centers = 3, nstart = 25)
# Visualizing the clusters
fviz_cluster(kmns, data = dtf)
# to save the file
dev.off()
# getting output as a PNG file
png(file = "PLOT_Bk7.png")
kmns <- kmeans(dtf, centers = 7, nstart = 25)
# Visualizing the clusters
fviz_cluster(kmns, data = dtf)
# to save the file
dev.off()
