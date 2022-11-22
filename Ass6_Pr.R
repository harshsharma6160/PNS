install.packages("pracma")
library("pracma")

#1(i)
df<-function(x,y)
{
  2*(2*x+3*y)*0.2
}
integral2(df,0,1,0,1)
#integral2(df,0,1,0,1)$Q

#1(ii)
df2<-function(y)
{
  df(1,y)
}
integral(df2,0,1)
#integrate(df2,0,1)

#1(iii)
df3<-function(x)
{
  2*(2*x)*0.2
}
integral(df3,0,1)
#integrate(df3,0,1)

#1(iv)
df4<-function(x,y)
{
  x*y*df(x,y)
}
integral2(df4,0,1,0,1)
#integral2(df4,0,1,0,1)$Q

#2(i)
f<-function(x,y)
{
  (x+y)/30
}

m<-zeros(4,3)
x<-c(0,1,2,3)
y<-c(0,1,2)
for(i in 1:length(x))
{
  for(j in 1:length(y))
  {
    m[i,j]=f(x[i],y[j])
  }
}
#m<-matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
print(m)

#2(ii)
sum(m)

#2(iii)
g<-apply(m,1,sum)
g

#2(iv)
h<-apply(m,2,sum)
h

#2(v)
f(0,1)/apply(m,2,sum)[2]

#2(vi)
E_X<-sum(c(0,1,2,3)*g)
E_X

E_Y<-sum(c(0,1,2)*h)
E_Y

f<-function(x,y){
  x*y*(x+y)/30
}
E_XY<-sum(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)))
E_XY

E_X2<-sum((c(0,1,2,3)^2)*g)
VAR_X<-E_X2-(E_X^2)
VAR_X

E_Y2<-sum((c(0,1,2)^2)*h)
VAR_Y<-E_Y2-(E_Y^2)
VAR_Y

COV<-E_XY-E_X*E_Y
COV

COR<-COV/(sqrt(VAR_X)*sqrt(VAR_Y))
COR

