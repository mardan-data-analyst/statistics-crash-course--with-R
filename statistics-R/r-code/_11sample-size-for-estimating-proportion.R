# 95% Confidence level
# 3% Margin of error

p <- 1/2
ME <- 0.03
z <- qnorm(0.025, mean=0, sd=1, lower.tail=FALSE)

z^2 * p * (1 - p) / ME^2

# Small margin of error: 1 %

ME <- 0.01
z^2 * p * (1 - p) / ME^2

# 99% confidence level

z <- qnorm(0.005, mean=0, sd=1, lower.tail=FALSE)
z
z^2 * p * (1 - p) / ME^2
