# Life expectancy data set

data <- read.table("LifeExpectancyData.txt", header=TRUE)

lifeexp <- data[, 3]
lifeexp

hist(lifeexp)
hist(lifeexp, breaks=5, xlab="Life expectancy (years)",
     main="Histogram of Life expectancies")

# test: noisy histogram
hist(lifeexp, breaks=10, xlab="Life expectancy (years)",
     main="Histogram of Life expectancies")
hist(lifeexp, breaks=20, xlab="Life expectancy (years)",
     main="Histogram of Life expectancies")
# end of test

boxplot(lifeexp, horizontal=TRUE, range=0, xlab="Life expectancy (years)")
summary(lifeexp)

# Skeleton data set

skeleton <- read.table("SkeletonData.txt", header=TRUE)
skeleton

attach(skeleton)

hist(DGerror, xlab="Estimated Age ~ Actual Age (years)",
     main="Histogram of Differences")
boxplot(DGerror, horizontal=TRUE, xlab="Estimated Age ~ Actual Age (years)")
summary(DGerror)

# New York Red Bulls salaries 2012

nysalaries <- c(33750, 44000, 138188, 45566.67, 44000,
                141666.67, 292500, 5600000, 103500, 190000,
                65000, 33750, 195000, 44000.04, 4600000,
                194375, 33750, 112495.5, 95000, 301999,
                181500, 33750, 185000, 205000, 44000)

hist(nysalaries/1000, breaks=24, xlab="Salaries in thousands of dollars (US)",
     main="Histogram of NY Red Bulls salaries")
# remove outliers

nysalariesOutliersRmv <- sort(nysalaries)[1:23]

hist(nysalariesOutliersRmv/1000, breaks=3, xlab="NY Red Bulls salaries in thousands of dollars (US)",
     main="Histogram of NY Red Bulls salaries, outliers removed")
boxplot(nysalariesOutliersRmv/1000, horizontal=TRUE, xlab="NY Red Bulls salaries in thousands of dollars (US)",
        main="Histogram of NY Red Bulls salaries, outliers removed")
summary(nysalariesOutliersRmv)

# specify digits to display results
summary(nysalariesOutliersRmv, digits=6)
