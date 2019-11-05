Auto=read.csv("datasets/Auto.csv",header=T,na.strings ="?")
size(Auto[,,1:3])
head(Auto, n = 15)

# (b) What is the range
range(Auto$mpg)
range(Auto$cylinders)
range(Auto$displacement)
summary(Auto$horsepower)
names(Auto)
range(Auto$weight)
range(Auto$acceleration)
range(Auto$year)
range(Auto$origin)

# (c) Mean and std of each predictor
summary(Auto)

# (d) Mean and std of predictors 10:85
dim(Auto[10:85,])
summary(Auto[10:85,])

# (e) Using the full data set, investigate 
# the predictors graphically, using scatterplots 
# or other tools of your choice. Create some plots 
# highlighting the relationships among the predictors. 
# Comment on your findings.

pairs(Auto)
# In the pair scatterplots
plot(Auto$horsepower, Auto$weight)
# We can see corelation between weight and horsepower. We can see the smaller 
# the car the less horsepower can fit into the car. And bigger cars can (and require)
# pack more horsepower.

plot(Auto$horsepower, Auto$acceleration)
# We can see the opposite - inverse correlation between horsepower and the acceleration.
# Which means that more horsepower generally means less acceleration, which is not 
# because of the horsepower but because more horesepower means more weigh which
# means less acceleration. 

plot(Auto$weight, Auto$mpg)
#We can see that as the wieght increases the miles-per-gallon decreases.


# (f) Suppose that we wish to predict gas mileage (mpg) on the basis of 
# the other variables. Do your plots suggest that any of the other variables 
# might be useful in predicting mpg? Justify your answer.

pairs(Auto)
#displacement, horsepower and wieght all could be used for predicting
#mpg, since everyone of them are inverse correlated with the mpg



