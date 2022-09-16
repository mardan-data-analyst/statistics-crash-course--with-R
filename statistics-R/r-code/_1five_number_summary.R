library(tidyverse)
library(dplyr)
library(ggplot2)

# Life expectancy datasets
data <- read.table("LifeExpectancyData.txt", header=TRUE)
data

lifeexp <- data[, 3]
lifeexp

plot(lifeexp)
plot(lifeexp, xlab='Country', ylab='Life Expectancy', ylim=c(0, 86))
plot(sort(lifeexp), xlab='Country', ylab='Life Expectancy', ylim=c(0, 86))
boxplot(lifeexp, ylab='Life Expectancy', ylim=c(0, 86))
summary(lifeexp)

# Grades data set

grades <- c(79, 68, 69, 88, 90, 74, 87, 76, 93)
sort(grades)
summary(grades)

boxplot(grades, ylab='Grades', ylim=c(60, 100))

six_grades <- c(68, 84, 90, 74, 78, 93)
sort(six_grades)
summary(six_grades)
plot(sort(six_grades), type='b', xlab='Student', ylab='Grade', ylim=c(60, 100))
