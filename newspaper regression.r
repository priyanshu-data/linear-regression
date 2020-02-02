#linear regression

#
newspaper_data<-NewspaperData
newspaper_data1<-newspaper_data[,-1]
attach(newspaper_data[,-1])

summary(newspaper_data[,-1])

dotchart(NewspaperData$daily,labels=row.names(NewspaperData$Newspaper),cex=.7)

boxplot(sunday,col="dodgerblue4")
boxplot(daily,col="dodgerblue4")
plot(daily,sunday,main="scatter Plot",
     col="Dodgerblue",
     col.main="Dodgerblue4",
     col.lab="Dodgerblue4",
     xlab="Daily Circulations",
     ylab="Sunday Circulations",pch=20)

mymodel<-lm(sunday~daily, data=newspaper_data)

summary(mymodel)

test<-data.frame(daily=c(200,250,300))
pred<-predict(mymodel,newdata=test)
pred

pred<-predict(mymodel)
pred
