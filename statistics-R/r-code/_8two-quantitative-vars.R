# Life expectancy data set

countries <- read.table("LifeExpectancyData.txt", header=TRUE)
colnames(countries) <- c("Country", "Region", "LifeExp", "GDP", "HIV")
attach(countries)

# GDP versus Life expectancy

plot(GDP, LifeExp, xlab="GDP per capita (2000 US $)", ylab="Life Expectancy (years)",
     main="Scatter plot: Life Expectancy versus GDP per capita")
cor(GDP, LifeExp, use = "complete.obs")

# Life expectancy versus HIV infections rate
plot(HIV, LifeExp, xlab="HIV infection rate", ylab="Life Expectancy (years)",
     main="Scatter plot: Life Expectancy versus HIV infection rate")
cor(HIV, LifeExp, use = "complete.obs")

# Skeleton remains data set

skeleton_data <- read.table("SkeletonData.txt", header=TRUE)
attach(skeleton_data)

plot(BMIquant, DGerror, xlab="Body Mass Index (BMI)",
     ylab="Estimated Age minus Actual Age (years)",
     main="Scatter plot: Skeleton Age Difference versus BMI")
cor(DGerror, BMIquant, use = "complete.obs")
