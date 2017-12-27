# Month 3 week 4 Course assignment
# for John Hopkins Data Science Specializtion
# run_analysis.R
# by gdolwell
# 27 December 2017

# load dependent libraries
library(dplyr)

# set working directory, ymmv
setwd("~/Code/R/datasciencecoursera/Getting_and_Cleaning_Data/course_project/")

# read in traingiing sets
trainingSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainingValues <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainingActivity <- read.table("./UCI HAR Dataset/train/y_train.txt")

# read in test sets
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testValues <- read.table("./UCI HAR Dataset/test/X_test.txt")
testActivity <- read.table("./UCI HAR Dataset/test/y_test.txt")

# read in features labels and activites
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = F)
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# name the columns in activities
colnames(activities) <- c("activityId", "activityLabel")

# create a unified data set
motion <- rbind(
  cbind(trainingSubjects, trainingValues, trainingActivity),
  cbind(testSubjects, testValues, testActivity)
  )

# ram is expensive, remove now redundant data sets
rm(trainingSubjects, trainingValues, trainingActivity, 
   testSubjects, testValues, testActivity)

# add column names to new data set
colnames(motion) <- c("subject", features[, 2], "activity")

# remove any columns that are do not contain the words subject, activity, mead or sd
motion <- motion[ , grepl("subject|activity|mean|std", colnames(motion))]

# replace activity names with descriptors
motion$activity <- factor(
  motion$activity, levels = activities[, 1], labels = activities[, 2])

# create new variable fro the renaming of columns
newColNames <- colnames(motion)

# remove all erroneous punctuations and expand abbreviations
newColNames <- gsub("[\\(\\)-]", "", newColNames)
newColNames <- gsub("^f", "frequencyDomain", newColNames)
newColNames <- gsub("^t", "timeDomain", newColNames)
newColNames <- gsub("Acc", "Accelerometer", newColNames)
newColNames <- gsub("Gyro", "Gyroscope", newColNames)
newColNames <- gsub("Mag", "Magnitude", newColNames)
newColNames <- gsub("Freq", "Frequency", newColNames)
newColNames<- gsub("mean", "Mean", newColNames)
newColNames <- gsub("std", "StandardDeviation", newColNames)
newColNames <- gsub("BodyBody", "Body", newColNames)

# set data set column names to newColNames
colnames(motion) <- newColNames

# group data set, by subject then activity and record the mean for each
motionMeans <- motion %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

# write output to a new csv
write.csv(motionMeans, "tidy_data.csv", row.names = FALSE, quote = FALSE)
