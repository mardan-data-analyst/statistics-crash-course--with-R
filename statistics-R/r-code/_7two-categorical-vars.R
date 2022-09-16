install.packages("gmodels")
install.packages("SMPracticals")
library(gmodels)
library(SMPracticals)

# Skeletons data set

skeleton_data <- read.table("SkeletonData.txt", header=TRUE)
attach(skeleton_data)

BMIcat <- factor(BMIcat, levels=c("underweight", "normal", "overweight", "obese"))
Sex <- factor(Sex, levels=c("1", "2"), labels=c("Male", "Female"))

freqBMI <- table(BMIcat)
relFreq <- freqBMI/400
cbind(freqBMI, relFreq)

freqSex <- table(Sex)
relFreq <- freqSex/400
cbind(freqSex, relFreq)

# Cross table, contingency table, conditional distribution table

joint <- CrossTable(BMIcat, Sex, prop.chisq=FALSE)
joint

joint_counts <- joint$t

barplot(joint_counts, beside=TRUE, col=rainbow(4), ylab="Frequency", xlab="Sex")
legend("topright", c("underweight", "normal", "overweight", "obese"),
       pch=15, col=rainbow(4))

barplot(joint_counts, beside=FALSE, col=rainbow(4), ylab="Frequency", xlab="Sex")
legend("topright", c("underweight", "normal", "overweight", "obese"),
       pch=15, col=rainbow(4))

BMI_given_Sex <- joint$prop.col
barplot(BMI_given_Sex, col=rainbow(4),
        ylab="Proportion of each BMI classification for each Sex",
        xlab="Sex")
legend("topright", inset=c(.05, .01), c("underweight", "normal", "overweight", "obese"),
       pch=15, col=rainbow(4), bty="o", bg="white")

# Patricia data set

Patricia <- matrix(c(23, 6140, 345, 5673), byrow=TRUE, ncol=2)
Patricia

colnames(Patricia) <- c("Yes", "No")
rownames(Patricia) <- c("HPV Vaccine", "Other")

# Cross table, contingency table, conditional distribution table

Patricia_joint <- CrossTable(Patricia, prop.chisq=FALSE)
Patricia_joint

# Exercise
# Analyze this data set
smoking
