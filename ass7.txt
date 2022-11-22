#1
n=100
df=n-1
a<-rt(n,df)
a
hist(a)

#2
n=100
df<-c(2,10,25)
rchisq(n,df[1])
rchisq(n,df[2])
rchisq(n,df[3])

#3
x<-seq(-6,6,length=100)
x
y<-c(1,4,10,30)
v1<-dt(x,df=y[1])
v1

v2<-dt(x,df=y[2])
v2

v3<-dt(x,df=y[3])
v3

v4<-dt(x,df=y[4])
v4

colour<-c("red", "blue", "green", "black")
plot(x,v4, type="l",xlab="t-value",ylab="Density",main="Comparison of t-distributions", col=colour [4])
for (i in 1:4){
  lines(x,dt(x,df=y[i]), type="l",col=colour[i])
}

#4(i)
qf(0.95,df1=10,df2=20)

#4(ii)
x=1.5
pf(x,df1=10,df2=20,lower.tail = TRUE)
pf(x,df1=10,df2=20,lower.tail = FALSE)

#4(iii)
l<-c(0.25,0.5,0.75,0.999)
qf(l[1],df1=10,df2=20,lower.tail = TRUE)
qf(l[2],df1=10,df2=20,lower.tail = TRUE)
qf(l[3],df1=10,df2=20,lower.tail = TRUE)
qf(l[4],df1=10,df2=20,lower.tail = TRUE)

#4(iv)
b<-rf(1000,df1=10,df2=20)
hist(b)
