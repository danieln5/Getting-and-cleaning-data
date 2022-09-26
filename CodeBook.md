# Code book

This code book describes the original data set data, the transformations performed to clean up the data, and the variables of the resulting tidy data set.

## Original data set

The original data set is the result of experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Measurements

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

This code book updates the following code books available in the original data set:

- features_info.txt: Shows information about the variables used on the feature vector.
- features.txt: List of all features.
- activity_labels.txt: Links the class labels with their activity name.  

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Acknowledgments

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Transformations

The following transformations and work was performed to clean up the data and create a tidy data set from the original data set:  

1. The training and the test sets were merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement were extracted. 
3. Descriptive activity names were applied to name the activities in the data set
4. The original variable names were replaced to appropriately label the data set with descriptive variable names. 
5. A second independent tidy data set was created from the data set in step 4, with the average of each variable for each activity and each subject.

The transformations are implemented in the R script called run_analysis.R

### Variables in the tidy data set 

| Variable | Description | Value/units
| :-- | :-- | :--
| Subject| Identifier for volunteers carrying out the experiment| From 1 to 30 
| Activity| Activity performed by the subject| Walking, Walking upstairs, Walking downstairs, Sitting, Standing, or Laying 
| TimeBodyAccMeanX| Time domain body accelerometer signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccMeanY| Time domain body accelerometer signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccMeanZ| Time domain body accelerometer signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| TimeGravityAccMeanX| Time domain gravity accelerometer signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| TimeGravityAccMeanY| Time domain gravity accelerometer signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| TimeGravityAccMeanZ| Time domain gravity accelerometer signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkMeanX| Time domain body accelerometer jerk signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkMeanY| Time domain body accelerometer jerk signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkMeanZ| Time domain body accelerometer jerk signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroMeanX| Time domain body gyroscope signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroMeanY| Time domain body gyroscope signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroMeanZ| Time domain body gyroscope signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkMeanX| Time domain body gyroscope jerk signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkMeanY| Time domain body gyroscope jerk signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkMeanZ| Time domain body gyroscope jerk signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccMagMean| Time domain body accelerometer magnitude signal: mean value| Normalized and bounded within [-1,1] 
| TimeGravityAccMagMean| Time domain gravity accelerometer magnitude signal: mean value| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkMagMean| Time domain body accelerometer jerk magnitude signal: mean value| Normalized and bounded within [-1,1] 
| TimeBodyGyroMagMean| Time domain body gyroscope magnitude signal: mean value| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkMagMean| Time domain body gyroscope jerk magnitude signal: mean value| Normalized and bounded within [-1,1] 
| FrequencyBodyAccMeanX| Frequency domain body accelerometer signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccMeanY| Frequency domain body accelerometer signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccMeanZ| Frequency domain body accelerometer signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkMeanX| Frequency domain body accelerometer jerk signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkMeanY| Frequency domain body accelerometer jerk signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkMeanZ| Frequency domain body accelerometer jerk signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroMeanX| Frequency domain body gyroscope signal: mean value along the x-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroMeanY| Frequency domain body gyroscope signal: mean value along the y-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroMeanZ| Frequency domain body gyroscope signal: mean value along the z-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccMagMean| Frequency domain body accelerometer magnitude signal: mean value| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkMagMean| Frequency domain body accelerometer jerk magnitude signal: mean value| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroMagMean| Frequency domain body gyroscope magnitude signal: mean value| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroJerkMagMean| Frequency domain body gyroscope jerk magnitude signal: mean value| Normalized and bounded within [-1,1] 
| TimeBodyAccStdX| Time domain body accelerometer signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccStdY| Time domain body accelerometer signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccStdZ| Time domain body accelerometer signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| TimeGravityAccStdX| Time domain gravity accelerometer signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| TimeGravityAccStdY| Time domain gravity accelerometer signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| TimeGravityAccStdZ| Time domain gravity accelerometer signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkStdX| Time domain body accelerometer jerk signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkStdY| Time domain body accelerometer jerk signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkStdZ| Time domain body accelerometer jerk signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroStdX| Time domain body gyroscope signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroStdY| Time domain body gyroscope signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroStdZ| Time domain body gyroscope signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkStdX| Time domain body gyroscope jerk signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkStdY| Time domain body gyroscope jerk signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkStdZ| Time domain body gyroscope jerk signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| TimeBodyAccMagStd| Time domain body accelerometer magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| TimeGravityAccMagStd| Time domain gravity accelerometer magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| TimeBodyAccJerkMagStd| Time domain body accelerometer jerk magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| TimeBodyGyroMagStd| Time domain body gyroscope magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| TimeBodyGyroJerkMagStd| Time domain body gyroscope jerk magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| FrequencyBodyAccStdX| Frequency domain body accelerometer signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccStdY| Frequency domain body accelerometer signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccStdZ| Frequency domain body accelerometer signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkStdX| Frequency domain body accelerometer jerk signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkStdY| Frequency domain body accelerometer jerk signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkStdZ| Frequency domain body accelerometer jerk signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroStdX| Frequency domain body gyroscope signal: standard deviation along the x-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroStdY| Frequency domain body gyroscope signal: standard deviation along the y-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroStdZ| Frequency domain body gyroscope signal: standard deviation along the z-axis| Normalized and bounded within [-1,1] 
| FrequencyBodyAccMagStd| Frequency domain body accelerometer magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| FrequencyBodyAccJerkMagStd| Frequency domain body accelerometer jerk magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroMagStd| Frequency domain body gyroscope magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
| FrequencyBodyGyroJerkMagStd| Frequency domain body gyroscope jerk magnitude signal: standard deviation| Normalized and bounded within [-1,1] 
