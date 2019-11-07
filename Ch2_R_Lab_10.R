# Load the dataset from MASS library

library(MASS)
Boston
?Boston
names(Boston)

dim(Boston)
# (a) There are 506 rows and there are 14 columns
# each row represents a house 
# each of the columns is one of 14 features or predictors of each house

pairs(Boston)
# (b) 
plot(Boston$crim, Boston$dis)
# The biggest crime rate is in places closest to five Boston employment centers
plot(Boston$nox, Boston$dis)
# nox - nitrogen oxides concentration (parts per 10 million).
# dis - weighted mean of distances to five Boston employment centres
# In the plot we can see that the farther away the housing is dfrom the 
# 5 employment centers the lower the nitrogen oxides concentration
plot(Boston$medv, Boston$rm)
# rm - average number of rooms per dwelling
# medv - median value of owner-occupied homes in \$1000s.
# From the plot we can see that the value of the house
# is correlated with number of rooms
plot(Boston$lstat, Boston$age)
# age - proportion of owner-occupied units built prior to 1940.
# lstat lower status of the population (percent)
# This is interesting plot. We can see as lstat increases
# the range of housing age decrease, where the lower bound of the range
# increases. And all of the range is filled with datapoints

# (c)
pairs(Boston)
# We can see dis and mdev associated with crim.
plot(Boston$crim, Boston$dis)
plot(Boston$crim, Boston$medv)
# Higher crime rates are associated with houses with llower value
# Higher crime rates are associated witw locations farther away from
# employment centers

# (d)
names(Boston)

plot(Boston$crim)
# There are few suburbs with very high crime rate. Most are sub 10 percent.
plot(Boston$zn)
plot(Boston$indus)
# Some of the suburbs have more than 25% non-retail business acres of all businesses.
plot(Boston$chas)
plot(Boston$nox)
# Few suborbs are in 0.9 
plot(Boston$rm)
# Few suburbs have high room counts
plot(Boston$age)
plot(Boston$dis)
# Few suburbs are very far from employment centers
plot(Boston$rad)
plot(Boston$tax)
# Part of suburbs have larger tax rate than the res
plot(Boston$ptratio)
plot(Boston$black)
plot(Boston$lstat)
plot(Boston$medv)

# (e)
sum(Boston$chas == 1.0)
# 35

# (g)
summary(Boston$medv)
min(Boston$medv)
Boston[Boston$medv == min(Boston$medv),]$tax

#crim zn indus chas   nox    rm age    dis rad tax ptratio  black lstat medv
#399 38.3518  0  18.1    0 0.693 5.453 100 1.4896  24 666    20.2 396.90 30.59    5
#406 67.9208  0  18.1    0 0.693 5.683 100 1.4254  24 666    20.2 384.97 22.98    5

summary(Boston)
#There are two suburbs with minimum medv value - 5.0 . 
plot(Boston$crim)
#These two suburbs are very high in crime, compared to the mean of 3.6
#For both of the entries age is maximum in the dataset - 100 
#Distance to the employment centers "dis" is very close to the minimum of the dataset
#tax is well above the mean

#(h)
Boston$rm >= 5.0
sum(Boston$rm > 7.0) # 64
sum(Boston$rm > 8.0) # 13

