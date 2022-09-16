library(tidyverse)
library(dplyr)
library(ggplot2)

data <- read.table("LifeExpectancyData.txt", header=TRUE)

lifeexp <- data[, 3]
lifeexp

boxplot(lifeexp, ylab='Life Expectancy', ylim=c(40, 90))
summary(lifeexp)

# Range of data
range(lifeexp)
max(lifeexp) - min(lifeexp)

# Inter quartile Range (IQR)
IQR(lifeexp)

# Standard deviation
grades <- c(79, 68, 69, 88, 90, 74, 87, 76, 93)
summary(grades)

var(grades)
sd(grades) # standard deviation function
sqrt(var(grades)) # standard deviation is the square root of variance
round(sd(grades), 1)

# New York Red Bulls salaries 2012

nySalaries <- c(33750, 44000, 138188, 45566.67, 44000,
                141666.67, 292500, 5600000, 103500, 190000,
                65000, 33750, 195000, 44000.04, 4600000,
                194375, 33750, 112495.5, 95000, 301999,
                181500, 33750, 185000, 205000, 44000)

nySalariesSorted <- sort(nySalaries)
nySalariesTrimmed <- nySalariesSorted[3:23]
length(nySalariesTrimmed)

median_org <- median(nySalaries)
mean_org <- mean(nySalaries)
range_org <- max(nySalaries) - min(nySalaries)
iqr_org <- IQR(nySalaries)
st.dev_org <- sd(nySalaries)
origin <- c(median_org, mean_org, range_org, iqr_org, st.dev_org)
origin

medianTrim <- median(nySalariesTrimmed)
meanTrim <- mean(nySalariesTrimmed)
rangeTrim <- max(nySalariesTrimmed) - min(nySalariesTrimmed)
iqrTrim <- IQR(nySalariesTrimmed)
st.devTrim <- sd(nySalariesTrimmed)
trimmed <- c(medianTrim, meanTrim, rangeTrim, iqrTrim, st.devTrim)
trimmed

stats <- cbind(origin, trimmed)
rownames(stats) <- c('median', 'mean', 'range', 'IQR', 'std.dev')
stats
