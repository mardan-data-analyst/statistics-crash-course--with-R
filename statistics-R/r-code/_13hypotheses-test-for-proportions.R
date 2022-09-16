library(binom)

# one-sided test

test.stat <- (0.42 - 0.5) / sqrt(0.5*0.5/1046)
test.stat
pnorm(test.stat, mean=0, sd=1, lower.tail=TRUE)

x <- round(0.42*1046, 0)
x
binom.test(x, 1046, p=0.5, alternative='less')

# two-sided tests

binom.test(576, 1000, p=0.5, alternative='two.sided')
