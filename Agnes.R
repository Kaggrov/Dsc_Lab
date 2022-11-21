install.packages("factoextra")

library(cluster)
library(factoextra)

df <- iris[,1:4]
df <- na.omit(df)
df <- scale(df)


hc <- agnes(df,method="complete")

pltree(hc,cex=0.6,hang= -1,main="Dendogram on agnes")

sub_grps <- cutree(hc,k=3)

fviz_cluster(list(data=df,cluster=sub_grps))