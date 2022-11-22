#1(a)
chest=c(rep("gold",20),rep("silver",30),rep("bronze",50))
print(sample(chest,10))

#1(b)
chance=c("success","failure")
print(sample(chance,10,replace=TRUE,prob=c(0.9,0.1)))

#2(a)
n=as.integer(readline("Enter number of people: "))
print("Probability that two people in the room have the same birthday:")
print(pbirthday(n,classes = 365,coincident = 2))

#2(b)
print("The smallest value of n for which the probability of a match is greater than 0.5: ")
print(qbirthday(prob = 0.5, classes = 365, coincident = 2))

#3
cloudy=0.4
rain=0.2
cloudy_when_rain=0.85

a<-function(a1,a2,a3)
{
  ans=a3*a2/a1
  return(ans)
}
print(a(cloudy,rain,cloudy_when_rain))

#4(a)
head(iris)

#4(b)
structure(iris)

#4(c)
range(iris$Sepal.Length)

#4(d)
mean(iris$Sepal.Length)

#4(e)
median(iris$Sepal.Length)

#4(f)
quantile(iris$Sepal.Length, probs=c(0.25, 0.75))
IQR(iris$Sepal.Length)

#4(g)
sd(iris$Sepal.Length)
var(iris$Sepal.Length)

#4(h)
range(iris$Sepal.Width)
range(iris$Petal.Width)
range(iris$Petal.Length)

mean(iris$Sepal.Width)
mean(iris$Petal.Width)
mean(iris$Petal.Length)

median(iris$Sepal.Width)
median(iris$Petal.Width)
median(iris$Petal.Length)

quantile(iris$Sepal.Width, probs=c(0.25, 0.75))
IQR(iris$Sepal.Width)
quantile(iris$Petal.Width, probs=c(0.25, 0.75))
IQR(iris$Petal.Width)
quantile(iris$Petal.Length, probs=c(0.25, 0.75))
IQR(iris$Petal.Length)

sd(iris$Sepal.Width)
var(iris$Sepal.Width)
sd(iris$Petal.Width)
var(iris$Petal.Width)
sd(iris$Petal.Length)
var(iris$Petal.Length)

#4(i)
summary(iris)


#5
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

v <- c(12,1,12,35,21,25,3,47,11,15,5,13,13,13)
result <- getmode(v)
print(result)

vector<- c("o","it","the","it","it")
result2 <- getmode(vector)
print(result2)
