# Discrete binomial distribution

# Flip a coin three times
# Let X = total number of Heads
# X ~ Binomial (3, 1/2)
# x = 0, 1, 2, 3

dbinom(0, size=3, prob=1/2)
x <- seq(0, 3, by=1)
prob_x <- dbinom(x, size=3, prob=1/2)
cbind(x, prob_x)

plot(x, prob_x, type="h", col="red", main="Binomial(3, 1/2)")
sum(x*prob_x)

y <- seq(0, 50, by=1)
prob_y <- dbinom(y, size=50, prob=0.2)
cbind(y, prob_y)
plot(y, prob_y, type="h", col="red", main="Binomial(50, 0.2)")

# Continuous binomial distribution
# Uniform and Normal distribution
# Uniform distribution

x <- seq(-1, 2, length=100)
unif01 <- dunif(x, min=0, max=1)
plot(x, unif01, type='l', col='red', main='Uniform[0, 1]')

# Normal distribution

x <- seq(-3, 3, length=100)
normal01 <- dnorm(x, mean=0, sd=1)
plot(x, normal01, type='l', col='red', main='Noraml[0, 1]')

# Sampling distribution

rbinom(1, 10, prob=0.5)
binom_sample <- rbinom(1000, 10, 0.5)
freq <- table(binom_sample)
freq

barplot(freq, xlab='X~number of heads')
