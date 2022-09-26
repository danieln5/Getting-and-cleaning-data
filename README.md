# Getting and Cleaning Data Course Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## About the data

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The project source data represent data collected from the accelerometers in the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

### Acknowledgments

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Project deliverables

The goal of the project is to deliver:

1. A tidy data set
2. A link to a Github repository with a script for performing the analysis
3. A code book that describes the variables, the data, and any transformations or work performed to clean up the data called CodeBook.md.
4. A README.md in the repo that explains the analysis files.

## Project files

The Github repository contains the following files: 

- tidy_data_set.txt: The output tidy data set
- CodeBook.md: A code book that describes the original data set data, the transformations performed to clean up the data, and the variables of the resulting tidy data set
- run_analysis.R: A script that fetches the source data and performs the analysis to produce the tidy data set.
- README.md: This README file, explaining the project files and data.

## Data analysis

To reproduce the the tidy data set download and source the run_analysis.R script.

The script does the following:

- Downloads the project data zip file in the working directory, unless it already exists
- Unzips the file into a folder called UCI HAR Dataset, unless the folder is already present
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the resulting data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Stores the tidy data set in a text file called tidy_data_set.txt in the working directory
