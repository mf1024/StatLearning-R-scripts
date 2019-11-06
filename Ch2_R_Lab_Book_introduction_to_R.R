x = c(1,3,2,5)
y = c(8,6,5,4)
x
length(x)
x+y
ls()
rm(x,y)
ls()
rm(list=ls()) # Remove all the objects

?matrix
x = matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x
x = matrix(c(1,2,3,4),2,2)
y = matrix(c(1,2,3,4),2,2,byrow=TRUE)

sqrt(x)
x^2

x = rnorm(50) # 50 random variable from normal distribution
y = x+rnorm(50, mean=50, sd=.1)
cor(x,y)
?cor # Correlation, Variance and Covariance

set.seed(1234)
rnorm(50)


## Graphics ##
x = rnorm(1000)
y = rnorm(1000)
plot(y,x)
plot(x,y,xlab="this is the x-axis",ylab="this is the y-axis",
     main="Plot of X vs Y")


pdf("Figure.pdf") # Save PDF file
plot(x,y,col="green")
dev.off()




x=seq(1,10)
x
x=1:10 #Same as seq()
x
x=seq(-pi,pi,length=50) #Linspace
x


y=x 
f=outer(x,y,function(x,y)cos(x)/(1+x^2))
?outer
contour(x,y,f)
?contour


fa=(f-t(f))/2
image(x,y,fa) # 2D plot
?t #Transpose
contour(x,y,fa,nlevels=15) #Draving level lines like in maps

image(x,y,fa)
persp(x,y,fa) #3D Plot
persp(x,y,fa,theta=30)
persp(x,y,fa,theta=30,phi=20)
persp(x,y,fa,theta=30,phi=70)
persp(x,y,fa,theta=30,phi=40)


## Indexing Data ##

A=matrix(1:16,4,4)
A
A[2,3] 

A[c(1,3),c(2,4)] #indexing intervals
A[1:3,2:4]
A [1:2 ,]
A [ ,1:2]

A[-c(1,3),]

dim(A)

Auto=read.table("datasets/Auto.data")
fix(Auto)
?fix


Auto=read.csv("datasets/Auto.csv",header=T,na.strings ="?")
fix(Auto)
dim(Auto) # 397 9 
Auto[1:4,]

Auto=na.omit(Auto) # Remove rows with missing data
dim(Auto) # 392 9
names(Auto)
plot(cylinders , mpg) #Error

plot(Auto$cylinders , Auto$mpg ) # Select columns

attach(Auto)
plot(cylinders , mpg) #No Error after attach

cylinders=as.factor(cylinders) #turns data into quantitive variables
cylinders

plot(cylinders, mpg)
plot(cylinders, mpg, col="red")
plot(cylinders, mpg, col="red", varwidth=T)

hist(mpg)
identify(horsepower,mpg,name)
summary(Auto)

summary(mpg)


