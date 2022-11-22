#1
a<-pbinom(9,12,1/6)
print(a)
b<-pbinom(6,12,1/6)
print(b)
print(a-b)

#2
c<-pnorm(84,72,15.2, lower.tail = F)
print(c)

#3
d<-dpois(0,5)
print(d)
e<-ppois(50,50)-ppois(47,50)
print(e)

#4
f<-dbinom(3,5,17/250)
print(f)


#5
x= 1:31

v<-pbinom(x,31,0.447)
plot(x,v)

t<-dbinom(x,31,0.447)
plot(x,t)

print("Mean :")
print(31*0.447)

print("Variance :")
print(31*0.447*(1-0.447))

print("SD :")
print(sqrt(31*0.447*(1-0.447)))

