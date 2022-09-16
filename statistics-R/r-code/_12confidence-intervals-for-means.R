plastic <- read.table('agechange.txt')
agechange <- plastic$V1

xbar <- mean(agechange)
var <- var(agechange)
t <- qt(0.025, df=59, lower.tail=FALSE)
ME <- t * sqrt(var/60)
xbar + c(-ME, ME)

t.test(agechange, conf.level=0.95)

# only confidence interval

t.test(agechange, conf.level=0.95)$conf.int
