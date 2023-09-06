#Class 09/06/2023
#Samantha Seibel

#determine working directory
getwd()

#read in data to table
sc <- read.table("Intro_data.csv", sep=",", header=T)

#write a linear model
model <- lm(y~x, data=sc)

#
