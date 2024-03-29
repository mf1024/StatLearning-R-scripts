### vectors, data, matrixes, subsetting
x=c(2,7,5)
x
y=seq(from=4, length=3, by=3) # Create a vector
?seq # Read help about seq function
x
x + y
x/y
x^y
x[2]
x[2:3]
x[-2]
x[-c(1,2)]
# There are no scalars in R, scalars in R are just vectors of size 1
z = matrix(seq(1,12),4,3)
z
z[1,]
z[,1]
z[,1,drop=FALSE] #Stays as a matrix
dim(z)
ls()
?ls #List objects

# Generating random data, graphics
x=runif(50) # 50 random numbers from uniform distribution
y=rnorm(50) # 50 random numbers from normal distribution
plot(x,y)
plot(x,y,xlab="Random Uniform", ylab="Random Normal", pch="*", col="blue")
par(mfrow=c(2,1)) # Partition the plot
plot(x,y)
hist(y)
par(mfrow=c(1,1))

### Reading in data
Auto=read.csv("path/to/data.csv")
names(Auto)
dim(Auto)
class(Auto)




