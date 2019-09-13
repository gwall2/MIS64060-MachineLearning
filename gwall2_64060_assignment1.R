#### Assignment 1 ####
#### Gordon Wall ####

#set the working directory
setwd("C:/Users/Gordon/Desktop/mahine learning/Module 2")
getwd()

#import and read sample dataset
acs <- read.csv(url("http://stat511.cwick.co.nz/homeworks/acs_or.csv"))

#install useful package for descriptive statistics
install.packages("pastecs")
library(pastecs)

#print out descriptive statistics for a selection of quantitative and categorical variables
stat.desc(acs$income_husband)
stat.desc(acs$income_wife)
table(acs$mode)
acs$total_income <- acs$income_husband + acs$income_wife
table2 <- table(acs$total_income, acs$number_children)
table2

#transform at least one variable
totincome_sqrt <- sqrt(acs$total_income)
totincome_sqrt

#plot at least one quantitative variable and one scatterplot
hist(acs$total_income)
plot(acs$total_income, acs$number_children)