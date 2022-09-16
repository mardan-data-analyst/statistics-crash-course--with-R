# Skeleton data set

skeleton <- read.table("SkeletonData.txt", header=TRUE)
skeleton

attach(skeleton)

boxplot(DGerror, range=0, ylab='Estimated Age ~ Actual Age (years)')

boxplot(DGerror, ylab='Estimated Age ~ Actual Age (years)')

summary(DGerror)

sum <- sum(DGerror)
n <- length(DGerror)
mean_ <- sum/n

mean(DGerror)
mean(DGerror, trim=0.1)

# New York Red Bulls salaries 2012

nysalaries <- c(33750, 44000, 138188, 45566.67, 44000,
                141666.67, 292500, 5600000, 103500, 190000,
                65000, 33750, 195000, 44000.04, 4600000,
                194375, 33750, 112495.5, 95000, 301999,
                181500, 33750, 185000, 205000, 44000)

boxplot(nysalaries/1000, ylab="Salaries in 1000's of US dollars")
median(nysalaries)
mean(nysalaries)
mean(nysalaries, trim=0.08)
