
#Codebook

Data Set Information

a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data

## Original data set

The original data set is the result of experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformations

The following transformations and work was performed on to clean up the data to create a tidy data set from the original data set:  

1. The training and the test sets were merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement were extracted. 
3. Descriptive activity names were applied to name the activities in the data set
4. The original variable names were replaced to appropriately label the data set with descriptive variable names. 
5. A second independent tidy data set was created from the data set in step 4, with the average of each variable for each activity and each subject.

The transformations are implemented in the R script called run_analysis.R

### Variables in the tidy data set 

Data: Subject 
Measurement: Identifier for volunteers carrying out the experiment 
Value: From 1 to 30 

Data: Activity 
Measurement: Activity performed by the subject 
Value: Walking, Walking upstairs, Walking downstairs, Sitting, Standing, or Laying 

Data: TimeBodyAccMeanX 
Measurement: Time domain body accelerometer signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccMeanY 
Measurement: Time domain body accelerometer signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccMeanZ 
Measurement: Time domain body accelerometer signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccMeanX 
Measurement: Time domain gravity accelerometer signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccMeanY 
Measurement: Time domain gravity accelerometer signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccMeanZ 
Measurement: Time domain gravity accelerometer signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkMeanX 
Measurement: Time domain body accelerometer jerk signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkMeanY 
Measurement: Time domain body accelerometer jerk signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkMeanZ 
Measurement: Time domain body accelerometer jerk signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroMeanX 
Measurement: Time domain body gyroscope signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroMeanY 
Measurement: Time domain body gyroscope signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroMeanZ 
Measurement: Time domain body gyroscope signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkMeanX 
Measurement: Time domain body gyroscope jerk signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkMeanY 
Measurement: Time domain body gyroscope jerk signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkMeanZ 
Measurement: Time domain body gyroscope jerk signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccMagMean 
Measurement: Time domain body accelerometer magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccMagMean 
Measurement: Time domain gravity accelerometer magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkMagMean 
Measurement: Time domain body accelerometer jerk magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroMagMean 
Measurement: Time domain body gyroscope magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkMagMean 
Measurement: Time domain body gyroscope jerk magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccMeanX 
Measurement: Frequency domain body accelerometer signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccMeanY 
Measurement: Frequency domain body accelerometer signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccMeanZ 
Measurement: Frequency domain body accelerometer signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkMeanX 
Measurement: Frequency domain body accelerometer jerk signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkMeanY 
Measurement: Frequency domain body accelerometer jerk signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkMeanZ 
Measurement: Frequency domain body accelerometer jerk signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroMeanX 
Measurement: Frequency domain body gyroscope signal: mean value along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroMeanY 
Measurement: Frequency domain body gyroscope signal: mean value along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroMeanZ 
Measurement: Frequency domain body gyroscope signal: mean value along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccMagMean 
Measurement: Frequency domain body accelerometer magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkMagMean 
Measurement: Frequency domain body accelerometer jerk magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroMagMean 
Measurement: Frequency domain body gyroscope magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroJerkMagMean 
Measurement: Frequency domain body gyroscope jerk magnitude signal: mean value 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccStdX 
Measurement: Time domain body accelerometer signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccStdY 
Measurement: Time domain body accelerometer signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccStdZ 
Measurement: Time domain body accelerometer signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccStdX 
Measurement: Time domain gravity accelerometer signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccStdY 
Measurement: Time domain gravity accelerometer signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccStdZ 
Measurement: Time domain gravity accelerometer signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkStdX 
Measurement: Time domain body accelerometer jerk signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkStdY 
Measurement: Time domain body accelerometer jerk signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkStdZ 
Measurement: Time domain body accelerometer jerk signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroStdX 
Measurement: Time domain body gyroscope signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroStdY 
Measurement: Time domain body gyroscope signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroStdZ 
Measurement: Time domain body gyroscope signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkStdX 
Measurement: Time domain body gyroscope jerk signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkStdY 
Measurement: Time domain body gyroscope jerk signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkStdZ 
Measurement: Time domain body gyroscope jerk signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccMagStd 
Measurement: Time domain body accelerometer magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: TimeGravityAccMagStd 
Measurement: Time domain gravity accelerometer magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyAccJerkMagStd 
Measurement: Time domain body accelerometer jerk magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroMagStd 
Measurement: Time domain body gyroscope magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: TimeBodyGyroJerkMagStd 
Measurement: Time domain body gyroscope jerk magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccStdX 
Measurement: Frequency domain body accelerometer signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccStdY 
Measurement: Frequency domain body accelerometer signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccStdZ 
Measurement: Frequency domain body accelerometer signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkStdX 
Measurement: Frequency domain body accelerometer jerk signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkStdY 
Measurement: Frequency domain body accelerometer jerk signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkStdZ 
Measurement: Frequency domain body accelerometer jerk signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroStdX 
Measurement: Frequency domain body gyroscope signal: standard deviation along the x-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroStdY 
Measurement: Frequency domain body gyroscope signal: standard deviation along the y-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroStdZ 
Measurement: Frequency domain body gyroscope signal: standard deviation along the z-axis 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccMagStd 
Measurement: Frequency domain body accelerometer magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyAccJerkMagStd 
Measurement: Frequency domain body accelerometer jerk magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroMagStd 
Measurement: Frequency domain body gyroscope magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1] 

Data: FrequencyBodyGyroJerkMagStd 
Measurement: Frequency domain body gyroscope jerk magnitude signal: standard deviation 
Value: Normalized and bounded within [-1,1]