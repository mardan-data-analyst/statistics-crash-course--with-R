# Read data
# Skeleton data set

skeleton <- read.table("SkeletonData.txt", header=TRUE)
skeleton

# Attach variable names

attach(skeleton)

# Take a look at a few observations

head(skeleton)

mydifference <- SBerror - DGerror
difference <- SBestimate - DGestimate

cbind(mydifference, difference)
mydifference == difference

mean(difference, na.rm=T)
sd(difference, na.rm=T)

# One sample t-test on the differences
t.test(difference, mu=0, alternative='two.sided')

# Two sample t-test on the differences

head(skeleton)
t.test(SBerror, DGerror, paired=T, mu=0, alternative='two.sided')
