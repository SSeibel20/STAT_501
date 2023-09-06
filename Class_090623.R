#Class 09/06/2023
#Samantha Seibel

library(EnvStats)

#determine working directory
getwd()

#read in data to table
sc <- read.table("Intro_data.csv", sep=",", header=T)

#write a linear model
model <- lm(x~y, data=sc)

#get a 95% confidence interval for slope and intercept
confint(model, level=0.95)

#get summary of the linear model
summary(model)

#run anocv anad lack of fit anova
anova(model)
anovaPE(model)
