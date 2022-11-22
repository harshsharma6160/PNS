#1
#(a)
data<- read.csv(file.choose())

#(b)
dim(data)
head(data,10)

#(c)
mean(data$Wall.Thickness)
hist(data$Wall.Thickness,col="pink",main="Histogram",xlab="Wall Thickness")

#(d)
abline(v=12.8,col="red",lty=1)

#2
s10<-c()
s50<-c()
s500<-c()
s9000<-c()
for(i in 1:9000)
{
  s10[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
  s50[i]=mean(sample(data$Wall.Thickness,50,replace=TRUE))
  s500[i]=mean(sample(data$Wall.Thickness,500,replace=TRUE))
  s9000[i]=mean(sample(data$Wall.Thickness,9000,replace=TRUE))
}
hist(s10,col="blue",main="Sample of 10",xlab="Wall Thickness")
abline(v=mean(s10),col="red",lty=1)
hist(s50,col="green",main="Sample of 50",xlab="Wall Thickness")
abline(v=mean(s50),col="red",lty=1)
hist(s500,col="orange",main="Sample of 500",xlab="Wall Thickness")
abline(v=mean(s500),col="red",lty=1)
hist(s9000,col="yellow",main="Sample of 9000",xlab="Wall Thickness")
abline(v=mean(s9000),col="red",lty=1)

       