## Getting and Cleaning Data Course Project
##
## This script does the following:
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
library(reshape2)

# Download the project data zip file, unless it already exists in the working directory
filename <- "dataset.zip"
if (!file.exists(filename)) {
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, destfile=filename, method="curl")
}

# Unzip the file, unless the project data folder is already present
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Read the training and test data sets and labels from the respective files
features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

# 1. Merge the training and the test sets to create one data set.
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)
data <- cbind(subject_data, y_data, x_data)

# 2. Extract only the measurements on the mean and standard deviation for each measurement.

# Update column names to be able to select measurements based on feature names
names(data) <- c("Subject", "Activity", features[, 2])
# Select measurements based on feature names that contain 'mean()' or 'std()', (excluding the angle() features) 
data <- select(data, Subject, Activity, contains("mean()"), contains("std()"))

# 3. Use descriptive activity names to name the activities in the data set

# Format activity names to lower case with initial upper case and no underscores 
activities[,2] <- tolower(activities[,2])
substring(activities[,2], 1, 1) <- toupper(substring(activities[,2], 1, 1))
activities[,2] <- sub("_", "  \\1", activities[,2])
# Replace activity numbers with activity names in data set, using vector recycling 
data$Activity <- activities[data$Activity, 2]

# 4. Appropriately labels the data set with descriptive variable names.

# Capitalize 'Mean' and 'Std'
names(data) <- gsub("mean", "Mean", names(data))
names(data) <- gsub("std", "Std", names(data))
# Remove duplicate 'Body'
names(data) <- gsub("BodyBody", "Body", names(data))
# Replace 't' and 'f' by 'Time' and 'Frequency' to indicate the domain
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
# Remove non-alphanumeric characters
names(data) <- gsub("[-()]","", names(data))

#5. Create a second tidy data set with the average of each variable for each activity and each subject.

# Group data by subject and activity
data <- group_by(data, Subject, Activity)
# Calculate, and keep only, the average of each variable (for each subject and activity)
data_average <- summarize(data, across(everything(), mean))

# Alternative long format data set
data_long <- melt(data, id = c("Subject", "Activity"))
# Group data by subject and activity
data_long <- group_by(data_long, Subject, Activity, variable)
# Calculate, and keep only, the average of each variable (for each subject and activity)
data_average_long <- summarize(data_long, mean(value))

# Alternative way to summarize data in wide format from long format
#data_average <- dcast(data_long, Subject + Activity ~ variable, mean)

# Store the tidy data set in a text file
write.table(data_average, file="tidy_data_set.txt", row.name=FALSE)