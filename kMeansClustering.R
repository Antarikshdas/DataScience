trp<-tripDetails[,-1]
View(trp)
str(trp)
summary(trp)
tripClusters<-kmeans(trp,3)
tripClusters
#ELBOW METHOD

k.max=10
wss=rep(NA,k.max)
nclust=list()
for(i in 1:k.max)
{
  deriveclass=kmeans(trp,i)
  wss[i]=deriveclass$tot.withinss
  nclust[[i]]=deriveclass$size
}
plot(1:k.max,wss,
     xlab="Number of clusters",
     ylab="Within clusters sum of squares",type="b",pch=19)
