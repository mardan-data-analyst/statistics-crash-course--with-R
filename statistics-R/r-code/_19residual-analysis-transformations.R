# Life expectancy data sets

countries <- read.table("LifeExpectancyData.txt", header=TRUE)
countries

# Rename columns

colnames(countries) <- c('Country', 'Region', 'LifeExp', 'GDP', 'HIV')

# Attach variable names

attach(countries)

# View first few observations

head(countries)

# Regression

linreg <- lm(LifeExp ~ GDP)

# Scatter plot with a line of best fit

plot(GDP, LifeExp, xlab='GDP per capita (2000 U.S. $)',
     ylab='Life Expectancy (years)')
abline(linreg, col='orange')

# Regression residuals

resids <- linreg$resid

# Remove NA values from GDP variable
GDP <- GDP[!is.na(GDP)]
length(GDP)
length(resids)

# Graph residuals

plot(GDP, resids,  xlab='GDP per capita (2000 U.S $)',
     ylab='Residuals (years)')

# Vertical line at zero for reference

abline(h=0, col='red')

# Transforming GDP to log(GDP) (base 10)

logGDP <- log10(countries$GDP)

# Regression with logGDP

linreg_log <- lm(LifeExp ~ logGDP)

# Scatter plot with a line of best fit

plot(logGDP, LifeExp, col='purple', xlab='Logarithm of GDP per capita (2000 U.S. $)',
     ylab='Residuals (years)')

abline(linreg_log, col='orange')

# Regression residuals

resids_log <- linreg_log$residuals

# Check lengths of x and y
length(resids_log)
length(logGDP)

# Remove NA values from logGDP
logGDP <- logGDP[!is.na(logGDP)]

# Check again
length(logGDP)

# Graph residuals

plot(logGDP, resids_log, xlab='Logarithm of GDP per capita (2000 U.S. $)',
     ylab='Residuals (years)')

# Vertical line at zero for reference

abline(h=0, col='red')