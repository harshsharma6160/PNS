#1
x<-c(0,1,2,3,4)
px<-c(0.41,0.37,0.16,0.05,0.01)
sum(x*px)
weighted.mean(x,px)
c(x%*%px)

#2
f<-function(t)
{
  t*0.1*(exp(-0.1*t))
}
expected_t<-integrate(f,lower=0,upper=Inf)
print(expected_t)
print(expected_t$value)

#3
f2<-function(x1)
{
  12*x1+2*(3-x1)-18
}
x1=c(0:3)
px1=c(0.1,0.2,0.2,0.5)
sum(f2(x1)*px1)

or 

a<-c(0,1,2,3)
b<-c(0.1,0.2,0.2,0.5)
sold<-sum(a*b)
not_sold<-3-sum(a*b)
m<-(sold*6)-(not_sold*4)
m

#4
g<-function(x)
{
  x*0.5*(exp(-abs(x)))
}
first_moment<-integrate(g,lower=1,upper=10)
print(first_moment)
print(first_moment$value)

h<-function(x)
{
  x*x*0.5*(exp(-abs(x)))
}
second_moment<-integrate(h,lower=1,upper=10)
print(second_moment)
print(second_moment$value)

Mean<-first_moment$value
print(Mean)
Variance<-second_moment$value-(first_moment$value*first_moment$value)
print(Variance)

#5
d<-function(x)
{
  0.75*(0.25^(x-1))
}
d(3)
prob_dist=function(y)
{
  temp=sqrt(y)
  0.75*(0.25**(temp-1))
}
x=c(1:5)
y=x^2
Mean=sum(prob_dist(y)*y)
print(Mean)
Variance=sum(prob_dist(y)*y*y)-Mean*Mean
print(Variance)