# Read data
# Skeleton data set

skeleton <- read.table("SkeletonData.txt", header=TRUE)
skeleton

# Attach variable names

attach(skeleton)

# Scatter plot

plot(BMIquant, DGerror, xlab='BMI', ylab='Age difference (years)', 
     main='Scatter plot: Skeleton Age difference vs BMI')

# Regression
# lm~linear model
# Response variable: DGerror
# Predictor variable: BMIquant

lm(DGerror~BMIquant)
# intercept (b0) = -23.2875
# slope (b1) = 0.4061

linreg <- lm(DGerror~BMIquant)

# y = -23.2 + 0.41x

# Scatter plot with a line of best fit

plot(BMIquant, DGerror, xlab='BMI', ylab='Age difference (years)', 
     main='Scatter plot: Skeleton Age difference vs BMI')
abline(linreg, col='red')

# Residuals

linreg$residuals

# Average of residuals is approximately 0

mean(linreg$residuals)

summary(linreg)

# Exercise: Try linear regression with Life expectancy data set
