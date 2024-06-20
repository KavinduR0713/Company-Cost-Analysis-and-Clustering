cost_data <- read.csv("costpercompany.csv", header= TRUE)
View(cost_data)

names(cost_data) 
head(cost_data) 
tail(cost_data) 
summary(cost_data) 
str(cost_data)

nrow(cost_data)
ncol(cost_data) 
dim(cost_data)

install.packages("cluster")
library(cluster)

names(cost_data[2:9])

pairs(cost_data[2:9])

plot(Fcost~ Sales, data = cost_data)
with(cost_data,text(Fcost ~ Sales, labels= Company))

plot(Fcost~ Sales, data = cost_data)
with(cost_data,text(Fcost ~ Sales, labels= Company,pos=4,cex=.6))

normalise <- function(df)
{
  return(((df- min(df)) /(max(df)-min(df))*(1-0))+0) 
}

head(cost_data)

company<-cost_data[,1]
cost_data_n<-cost_data[,2:9]
cost_data_n<-as.data.frame(lapply(cost_data_n,normalise))
cost_data_n$Company<-company
cost_data_n<-cost_data_n[,c(9,1,2,3,4,5,6,7,8)]
head(cost_data_n)

distance <- dist(cost_data_n,method = "euclidean")
print(distance)

print(distance,digits=3)

install.packages("factoextra")
library(factoextra)

fviz_dist(distance)

head(cost_data_n)

rownames(cost_data_n)<-cost_data_n$Company
cost_data_n$Company<-NULL

head(cost_data_n)

distance <- dist(cost_data_n,method = "euclidean") 
fviz_dist(distance)

kc<-kmeans(cost_data[,-1],3) #k=3
kc

clusplot(cost_data, kc$cluster, color=TRUE, shade=TRUE,  lines=0)
