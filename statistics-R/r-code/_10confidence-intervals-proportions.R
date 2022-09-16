install.packages("binom")
library(binom)

# Base R

phat <- 0.576

z <- qnorm(0.025, mean=0, sd=1, lower.tail=FALSE)
ME <- z * sqrt(phat*(1 - phat)/1000)
phat + c(-ME, ME)

# Binom package

binom.confint(576, 1000, 0.5, conf.level=0.95, methods='asymptotic')


ME <- z * sqrt(1/2 / 1/2 / 1000)
phat + c(-ME, ME)
