College = read.csv("datasets/College.csv")
College

names(College)
summary(College)

fix(College)
?fix

summary(College$PhD)
hist(College$PhD)
hist(College$S.F.Ratio, breaks = 50)
hist(College$Grad.Rate, breaks = 50)
summary(College$Grad.Rate)
hist(College$Accept/College$Apps, breaks = 50) # Percentage accepted students

hist(College$Top10perc)

rownames(College)=College[,1]
College
College=College[,-1]
fix(College)

summary(College)
pairs(College[,1:10])

par(mfrow=c(1,2))
plot(College$Private)
plot(College$Outstate)

Elite=rep("No",nrow(College))
Elite[College$Top10perc >50]="Yes"
Elite=as.factor(Elite)
College=data.frame(College ,Elite)
summary(College)

