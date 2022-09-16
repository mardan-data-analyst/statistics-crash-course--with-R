# Read data
# Skeleton data set

skeleton <- read.table("SkeletonData.txt", header=TRUE)
skeleton

# Attach variable names

attach(skeleton)

# Take a look at a few observations

head(skeleton)

mydifference <- SBerror - DGerror

# Separate data into male differences and female difference
malediff <- skeleton[Sex=='1', 6]
femalediff <- skeleton[Sex=='2', 6]

# Summary statistics
length(malediff)
mean(malediff)
var(malediff)

# Summary statistics
length(femalediff)
mean(femalediff)
var(femalediff)

# Critical value
qt(0.025, df=200.09, lower.tail=F)

# Two-sample t-test
# default arguments: alternative='two.sided', mu=0, conf.level=0.95
t.test(malediff, femalediff)

t.test(malediff, femalediff, var.equal=T)
