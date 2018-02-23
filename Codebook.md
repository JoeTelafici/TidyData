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

# tBodyAcc-mean()-X

Time domain - Accelerometer body motion measurement on the X-axis - mean value

##tBodyAcc-mean()-Y

Time domain - Accelerometer body motion measurement on the Y-axis - mean value

##tBodyAcc-mean()-Z

Time domain - Accelerometer body motion measurement on the Z-axis - mean value

### tBodyAcc-std()-X

Time domain - Accelerometer body motion measurement on the X-axis - standard deviation

### tBodyAcc-std()-Y

Time domain - Accelerometer body motion measurement on the Y-axis - standard deviation

### tBodyAcc-std()-Z

Time domain - Accelerometer body motion measurement on the Z-axis - standard deviation

### tGravityAcc-mean()-X

Time domain - Accelerometer gravitational force measurement on the X-axis - mean value

### tGravityAcc-mean()-Y

Time domain - Accelerometer gravitational force measurement on the Y-axis - mean value

### tGravityAcc-mean()-Z

Time domain - Accelerometer gravitational force measurement on the Z-axis - mean value

### tGravityAcc-std()-X

Time domain - Accelerometer gravitational force measurement on the X-axis - standard deviation

### tGravityAcc-std()-Y

Time domain - Accelerometer gravitational force measurement on the Y-axis - standard deviation

### tGravityAcc-std()-Z

Time domain - Accelerometer gravitational force measurement on the Z-axis - standard deviation

### tBodyAccJerk-mean()-X



### tBodyAccJerk-mean()-Y
### tBodyAccJerk-mean()-Z
### tBodyAccJerk-std()-X
### tBodyAccJerk-std()-Y
### tBodyAccJerk-std()-Z
### tBodyGyro-mean()-X
### tBodyGyro-mean()-Y
### tBodyGyro-mean()-Z
### tBodyGyro-std()-X
### tBodyGyro-std()-Y
### tBodyGyro-std()-Z
### tBodyGyroJerk-mean()-X
### tBodyGyroJerk-mean()-Y
### tBodyGyroJerk-mean()-Z
### tBodyGyroJerk-std()-X
### tBodyGyroJerk-std()-Y
### tBodyGyroJerk-std()-Z
### tBodyAccMag-mean()
### tBodyAccMag-std()
### tGravityAccMag-mean()
### tGravityAccMag-std()
### tBodyAccJerkMag-mean()
### tBodyAccJerkMag-std()
### tBodyGyroMag-mean()
### tBodyGyroMag-std()
### tBodyGyroJerkMag-mean()
### tBodyGyroJerkMag-std()
### fBodyAcc-mean()-X
### fBodyAcc-mean()-Y
### fBodyAcc-mean()-Z
### fBodyAcc-std()-X
### fBodyAcc-std()-Y
### fBodyAcc-std()-Z
### fBodyAcc-meanFreq()-X
### fBodyAcc-meanFreq()-Y
### fBodyAcc-meanFreq()-Z
### fBodyAccJerk-mean()-X
### fBodyAccJerk-mean()-Y
### fBodyAccJerk-mean()-Z
### fBodyAccJerk-std()-X
### fBodyAccJerk-std()-Y
### fBodyAccJerk-std()-Z
### fBodyAccJerk-meanFreq()-X
### fBodyAccJerk-meanFreq()-Y
### fBodyAccJerk-meanFreq()-Z
### fBodyGyro-mean()-X
### fBodyGyro-mean()-Y
### fBodyGyro-mean()-Z
### fBodyGyro-std()-X
### fBodyGyro-std()-Y
### fBodyGyro-std()-Z
### fBodyGyro-meanFreq()-X
### fBodyGyro-meanFreq()-Y
### fBodyGyro-meanFreq()-Z
### fBodyAccMag-mean()
### fBodyAccMag-std()
### fBodyAccMag-meanFreq()
### fBodyBodyAccJerkMag-mean()
### fBodyBodyAccJerkMag-std()
### fBodyBodyAccJerkMag-meanFreq()
### fBodyBodyGyroMag-mean()
### fBodyBodyGyroMag-std()
### fBodyBodyGyroMag-meanFreq()
### fBodyBodyGyroJerkMag-mean()
### fBodyBodyGyroJerkMag-std()
### fBodyBodyGyroJerkMag-meanFreq()


###Variable 1 (repeat this section for all variables in the dataset)
Short description of what the variable describes.

Some information on the variable including:
 - Class of the variable
 - Unique values/levels of the variable
 - Unit of measurement (if no unit of measurement list this as well)
 - In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels). 

(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

####Notes on variable 1:
If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

##Sources
Sources you used if any, otherise leave out.

##Annex
If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)