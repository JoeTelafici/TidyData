---
title: UCI HAR Means Dataset
author: Joseph Telafici
date: Feb 22, 2018
output:
  html_document:
    keep_md: yes
---

## Project Description
Johns Hopkins Data Science Cert - Getting and Cleaning Data Week 4 project

##Study design and data processing
Project required retrieving the Human Activity Recognition Using Smartphones Data Set from University of California at Irvine's Machine Learning Repository, merging the test and training data sets, tidying the data, subsetting out the \*mean and \*std fields and calculating the mean of the remaining fields by subject and activity type and creating a new, tidy data set that this codebook describes.

###Collection of the raw data
The original data was downloaded here: https://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
and the data described here:
https://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.names


###Notes on the original (raw) data 
Files in the Inertial Signals folders were ignored as none of their reported data included any of the variables reporting mean or standard deviation data.  

Several variables included data with a value of exactly -1.0000000e+000 (-1).  This value would be exceedingly rare in a piece of electrical equipment like the sensors involved in the study, and appear to be instances where the equipment malfunctioned and reported no data.  These values were treated as NAs for the purpose of this exercise, as there was no mention of them in any of the documentation for the original data.

##Creating the tidy datafile

See Readme.MD included in the repository with this file

##Description of the variables in the final_subset.csv file

### Subject

Subject number (1-30).  30 humans were measured wearing a smartphone, 21 (70%) in the training set and 9 (30%) in the test set.

### ActivityName

The activity being performed by the subject during the measurement.  Possible values are: WALKING, SITTING, STANDING, LAYING, WALKING_UPSTAIRS and WALKING_DOWNSTAIRS

##*Measurements*

Measurements from the gravitometer, gyroscope and accelerometer on Android devices are described here: https://developer.android.com/guide/topics/sensors/sensors_motion.html.  In short, the accelerometer measures the rate of change of position along the X, Y or Z access, the gravitometer measures the direction of gravitational force in a 3D vector (i.e. which way is up).  The gyroscope measures rotational force on the phone along the 3 axes (pitch, roll, yaw).   All measures are reported as numeric values of up to 8 signficant digits, generally between -1 and 1.

### tBodyAcc-mean()-X

Time domain - Accelerometer body motion measurement on the X-axis - mean value

### tBodyAcc-mean()-Y

Time domain - Accelerometer body motion measurement on the Y-axis - mean value

### tBodyAcc-mean()-Z

Time domain - Accelerometer body motion measurement on the Z-axis - mean value

### tBodyAcc-std()-X

Time domain - Accelerometer body motion measurement on the X-axis - standard deviation

### tBodyAcc-std()-Y

Time domain - Accelerometer body motion measurement on the Y-axis - standard deviation

### tBodyAcc-std()-Z

Time domain - Accelerometer body motion measurement on the Z-axis - standard deviation

### tGravityAcc-mean()-X

Time domain - Gravitational force measurement on the X-axis - mean value

### tGravityAcc-mean()-Y

Time domain - Gravitational force measurement on the Y-axis - mean value

### tGravityAcc-mean()-Z

Time domain - Gravitational force measurement on the Z-axis - mean value

### tGravityAcc-std()-X

Time domain - Accelerometer gravitational force measurement on the X-axis - standard deviation

### tGravityAcc-std()-Y

Time domain - Accelerometer gravitational force measurement on the Y-axis - standard deviation

### tGravityAcc-std()-Z

Time domain - Accelerometer gravitational force measurement on the Z-axis - standard deviation

### tBodyAccJerk-mean()-X

Time domain - Accelerometer body jerk measurement on the X-axis - mean value

### tBodyAccJerk-mean()-Y

Time domain - Accelerometer body jerk measurement on the Y-axis - mean value

### tBodyAccJerk-mean()-Z

Time domain - Accelerometer body jerk measurement on the Z-axis - mean value

### tBodyAccJerk-std()-X

Time domain - Accelerometer body jerk measurement on the X-axis - standard deviation

### tBodyAccJerk-std()-Y

Time domain - Accelerometer body jerk measurement on the Y-axis - standard deviation

### tBodyAccJerk-std()-Z

Time domain - Accelerometer body jerk measurement on the Z-axis - standard deviation

### tBodyGyro-mean()-X

Time domain - Gyroscope body measurement on the X-axis - mean value

### tBodyGyro-mean()-Y

Time domain - Gyroscope body measurement on the Y-axis - mean value

### tBodyGyro-mean()-Z

Time domain - Gyroscope body measurement on the Z-axis - mean value

### tBodyGyro-std()-X

Time domain - Gyroscope body measurement on the X-axis - standard deviation

### tBodyGyro-std()-Y

Time domain - Gyroscope body measurement on the Y-axis - standard deviation

### tBodyGyro-std()-Z

Time domain - Gyroscope body measurement on the Z-axis - standard deviation

### tBodyGyroJerk-mean()-X

Time domain - Gyroscope body jerk measurement on the X-axis - mean value

### tBodyGyroJerk-mean()-Y

Time domain - Gyroscope body jerk measurement on the Y-axis - mean value

### tBodyGyroJerk-mean()-Z

Time domain - Gyroscope body jerk measurement on the Z-axis - mean value

### tBodyGyroJerk-std()-X

Time domain - Gyroscope body jerk measurement on the X-axis - standard deviation

### tBodyGyroJerk-std()-Y

Time domain - Gyroscope body jerk measurement on the Y-axis - standard deviation

### tBodyGyroJerk-std()-Z

Time domain - Gyroscope body jerk measurement on the Z-axis - standard deviation

### tBodyAccMag-mean()

Time domain - Accelerometer body magnitude - mean value

### tBodyAccMag-std()

Time domain - Accelerometer body magnitude - standard deviation

### tGravityAccMag-mean()

Time domain - Accelerometer gravity magnitude - mean value

### tGravityAccMag-std()

Time domain - Accelerometer gravity magnitude - standard deviation

### tBodyAccJerkMag-mean()

Time domain - Accelerometer body jerk magnitude - mean value

### tBodyAccJerkMag-std()

Time domain - Accelerometer body jerk magnitude - standard deviation

### tBodyGyroMag-mean()

Time domain - Gyroscope body magnitude - mean value

### tBodyGyroMag-std()

Time domain - Gyroscope body magnitude - standard deviation

### tBodyGyroJerkMag-mean()

Time domain - Gyroscope body jerk magnitude - mean value

### tBodyGyroJerkMag-std()

Time domain - Gyroscope body jerk magnitude - standard deviation

### fBodyAcc-mean()-X

Frequency domain - Accelerometer body acceleration on the X axis - mean value

### fBodyAcc-mean()-Y

Frequency domain - Accelerometer body acceleration on the Y axis - mean value

### fBodyAcc-mean()-Z 

Frequency domain - Accelerometer body acceleration on the Z axis - mean value

### fBodyAcc-std()-X

Frequency domain - Accelerometer body acceleration on the X axis - standard deviation

### fBodyAcc-std()-Y

Frequency domain - Accelerometer body acceleration on the Y axis - standard deviation

### fBodyAcc-std()-Z

Frequency domain - Accelerometer body acceleration on the Z axis - standard deviation

### fBodyAcc-meanFreq()-X

Frequency domain - Accelerometer body acceleration on the X axis - mean frequency 

### fBodyAcc-meanFreq()-Y

Frequency domain - Accelerometer body acceleration on the Y axis - mean frequency 

### fBodyAcc-meanFreq()-Z

Frequency domain - Accelerometer body acceleration on the Z axis - mean frequency 

### fBodyAccJerk-mean()-X

Frequency domain - Accelerometer body jerk on the X axis - mean value

### fBodyAccJerk-mean()-Y

Frequency domain - Accelerometer body jerk on the Y axis - mean value

### fBodyAccJerk-mean()-Z

Frequency domain - Accelerometer body jerk on the Z axis - mean value

### fBodyAccJerk-std()-X

Frequency domain - Accelerometer body jerk on the X axis - standard deviation

### fBodyAccJerk-std()-Y

Frequency domain - Accelerometer body jerk on the Y axis - standard deviation

### fBodyAccJerk-std()-Z

Frequency domain - Accelerometer body jerk on the Z axis - standard deviation

### fBodyAccJerk-meanFreq()-X

Frequency domain - Accelerometer body jerk on the X axis - mean frequency 

### fBodyAccJerk-meanFreq()-Y

Frequency domain - Accelerometer body jerk on the Y axis - mean frequency 

### fBodyAccJerk-meanFreq()-Z

Frequency domain - Accelerometer body jerk on the Z axis - mean frequency 

### fBodyGyro-mean()-X

Frequency domain - Gyroscope body on the X axis - mean value

### fBodyGyro-mean()-Y

Frequency domain - Gyroscope body on the Y axis - mean value

### fBodyGyro-mean()-Z

Frequency domain - Gyroscope body on the Z axis - mean value

### fBodyGyro-std()-X

Frequency domain - Gyroscope body on the X axis - standard deviation

### fBodyGyro-std()-Y

Frequency domain - Gyroscope body on the Y axis - standard deviation

### fBodyGyro-std()-Z

Frequency domain - Gyroscope body on the Z axis - standard deviation

### fBodyGyro-meanFreq()-X

Frequency domain - Gyroscope body on the X axis - mean frequency 

### fBodyGyro-meanFreq()-Y

Frequency domain - Gyroscope body on the Y axis - mean frequency 

### fBodyGyro-meanFreq()-Z

Frequency domain - Gyroscope body on the Z axis - mean frequency 

### fBodyAccMag-mean()

Frequency domain - Accelerometer body acceleration magnitude - mean value

### fBodyAccMag-std()

Frequency domain - Accelerometer body acceleration magnitude - standard deviation

### fBodyAccMag-meanFreq()

Frequency domain - Accelerometer body acceleration magnitude - mean frequency 

### fBodyBodyAccJerkMag-mean()

Frequency domain - Accelerometer body jerk magnitude - mean value

### fBodyBodyAccJerkMag-std()

Frequency domain - Accelerometer body jerk magnitude - standard deviation

### fBodyBodyAccJerkMag-meanFreq()

Frequency domain - Accelerometer body jerk magnitude - mean frequency 

### fBodyBodyGyroMag-mean()

Frequency domain - Gyroscope body magnitude - mean value

### fBodyBodyGyroMag-std()

Frequency domain - Gyroscope body magnitude - standard deviation

### fBodyBodyGyroMag-meanFreq()

Frequency domain - Gyroscope body magnitude - mean frequency 

### fBodyBodyGyroJerkMag-mean()

Frequency domain - Gyroscope body jerk magnitude - mean value

### fBodyBodyGyroJerkMag-std()

Frequency domain - Gyroscope body jerk magnitude - standard deviation

### fBodyBodyGyroJerkMag-meanFreq()

Frequency domain - Gyroscope body jerk magnitude - mean frequency 



