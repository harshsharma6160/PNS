#1
x<-c(5,10,15,20,25,30)
max<-x[1]->min 
for(i in length(x)){
  if(x[i]>max)
    {
  max<-x[i]
  }
  }
for(i in length(x))
  { 
  if(x[i]<min){ min<-x[i]
  }
}

print('MAX:')
print(max) 
print('MIN') 
print(min)

#2
num = as.integer(readline(prompt="Enter a number: ")) 
factorial = 1
if(num < 0) { 
  print("Negative")
} else if(num == 0) {
  print("The factorial of 0 is 1")
} else {
  for(i in 1:num) {
    factorial = factorial * i
  }
  
  print(paste("The factorial of", num ,"is",factorial))
}

#3
nterms = as.integer(readline(prompt="How many terms? "))


n1 = 0
n2 = 1
count = 2


if(nterms <= 0) {
  print("Plese enter a positive integer")
} else {
  if(nterms == 1) { print("Fibonacci sequence:")
    print(n1)
  } else {
    print("Fibonacci sequence:") 
    print(n1)
    print(n2)
    while(count < nterms) { 
      nth = n1 + n2 
      print(nth)
    # update values n1 = n2
    n2 = nth
    count = count + 1
    
    }
  }
}

#4
a = as.integer(readline(prompt="Enter a number: ")) 
b = as.integer(readline(prompt="Enter a number: "))

op = readline(prompt="Enter a number: ")


if(op=='+'){ 
  print(a+b)
}else if (op=='-'){ 
  print(a-b)
}else if (op=='*'){ 
  print(a*b)
}else if (op=='/'){ 
  print(a/b)
}

#5
plot(1:10,type='l',col='green',main="STRAIGHT LINE") 
x<-c(3,4,4,3,3,2)
mylabel<-c("CC","ML","Prob","NP","DS","Cyber")
pie(x,mylabel,main="5th SEM") 
barplot(x,names.arg=mylabel)
