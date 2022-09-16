agechnage <- read.table("agechange.txt")
change <- agechnage$V1

# One-sided test
xbar <- mean(change)
s2 <- var(change)
n <- length(change)

t <- (xbar - 0) / sqrt(s2 / n)
t

pt(t, df=n-1, lower.tail=F)

# Two-sided test

bodytemp <- read.table("TempData.txt")
temp <- bodytemp$V1

t.test(temp, mu=37, alternative="two.sided")
