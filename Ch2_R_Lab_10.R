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
X = Boston[,,Boston$medv < 6]
X
