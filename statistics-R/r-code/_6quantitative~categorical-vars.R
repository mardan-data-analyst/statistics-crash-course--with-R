# Life expectancies data set

library(tidyverse)

lifedata <- read.table("LifeExpectancyData.txt", header=TRUE)
colnames(lifedata) <- c("Country", "Region", "LifeExp",  "GDP", "HIV")
attach(lifedata)
lifedata[Region=="EAP", ]

lifesplit <- split(lifedata, Region) 
lifesplit
lifesplit$EAP

lifeEAP <- lifedata[Region=="EAP", ]
lifeSSA <- lifedata[Region=="SSA", ]

summary(lifeEAP[, 3])
summary(lifeSSA[, 3])

boxplot(lifeEAP[, 3], lifeSSA[, 3], range=0, border=rainbow(2),
        xlab="Region", ylab="Age",
        names=c("EAP", "SSA"), main="Life Expectancies: Box Plot")
boxplot(LifeExp~Region, range=0, border=rainbow(6),
        xlab="Region", ylab="Age",
        main="Life Expectancies: Boxplot (all 6 regions)")

# Skeletons data set
# Sex~Age differences, Mass~Age differences

skeleton_data <- read.table("SkeletonData.txt", header=TRUE)
attach(skeleton_data)

boxplot(DGerror~Sex, range=0, border=rainbow(2),
        xlab="Sex", ylab="Age Error",
        names=c("Male", "Female"),
        main="Age diffence errors of skeletons according to sexes")

boxplot(DGerror~BMIcat, range=0, border=rainbow(4),
        xlab="Body Mass Index", ylab="Age Error",
        names=c("Normal", "Obese", "Overweight", "Underweight"),
        main="Body mass diffences skeletons according to age differences")
