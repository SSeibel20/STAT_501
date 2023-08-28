#STAT501 Intro to R
#Created 20230828

data = read.table('Intro_data.csv', sep=',', header=T)#reads in the data set Intro_data

boxplot(data[,-2],xlab="y", col="green") #boxplot of data in column 1
boxplot(data[,-1],xlab="x", col="yellow") #boxplot of data in column 2

plot(y~x,data=data)#creates scatterplot of y, x data from data set called "data"
abline(lm(y~x,data=data), col="blue")#adds best fit line to the scatterplot
abline(h= mean(data$y), col="green") #adds green line at mean of y

regmod = lm(y~x, data=data)#regresses response 'y' on predictor 'x'
summary(regmod)#provides regression model statistics
anova(regmod)#anova output of regression model


cor(data)#gives correlation matrix for data set named "data"

plot(regmod$fitted,regmod$residuals)#plot of residuals vs fitted values
abline(h=mean(regmod$residuals), col="blue")#adds reference line at mean of residuals: zero!
