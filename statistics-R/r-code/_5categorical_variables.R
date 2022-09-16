# Life expectancy data set

data <- read.table("LifeExpectancyData.txt", header=TRUE)
data

region <- data[, 2]
region

table(region)

counts <- table(region)
relfreq <- counts / sum(counts)
region_names <- c("Americas", "E.Asia&Pc", "Eur&C.As",
                  "M.E&N.Africa", "S.Asia", "S-S&Africa")
barplot(counts, col=rainbow(6), names.arg=region_names, main="World Regions: Bar Chart")

barplot(relfreq, col=rainbow(6), names.arg=region_names, main="World Regions: Relative Frequencies")

pie(counts, col=rainbow(6), label=region_names, main="World Regions: Pie Chart")

# Skeleton remains

skeleton <- read.table("SkeletonData.txt", header=TRUE)
skeleton

attach(skeleton)

# Sex variable
sex_counts <- table(Sex)
sex_relfreq <- sex_counts/sum(sex_counts)
sex_names <- c("Male", "Female")

barplot(sex_counts, col=rainbow(2),
        names.arg=sex_names, main="Skeleton Sex: Bar Chart")
barplot(sex_relfreq, col=rainbow(2),
        names.arg=sex_names, main="Skeleton Sex: Relative Frequencies")
pie(sex_counts, col=rainbow(2),
        names.arg=sex_names, main="Skeleton Sex: Pie Chart")

# BMI variable

bodyMass_counts <- table(BMIcat)
bodyMass_counts
BodyMass_relfreq <- bodyMass_counts/sum(bodyMass_counts)
bodyMassCatqs <- c("Normal", "Obese", "Overweight", "Underweight")

barplot(bodyMass_counts, col=rainbow(4),
        names.arg=bodyMassCatqs, main="Skeleton Weight categories: Bar Chart")
barplot(BodyMass_relfreq, col=rainbow(4),
        names.arg=bodyMassCatqs, main="Skeleton Weight: Relative Frequencies")
pie(bodyMass_counts, col=rainbow(4),
    labels=bodyMassCatqs, main="Skeleton Weight: Pie Chart")