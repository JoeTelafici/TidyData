# TidyData

## Dependencies

Project includes dplyr and reshape2 functions.  Will attempt to load libraries, but not install them if not present.

## Assumptions

### -1 Values 

I assume that values of -1.00000000 are NA values.  Not explicitly stated in the original data, but actual signals data of exactly -1 would be really unusual

### xYYY-MeanFreq variables

Unclear from the project description whether the variables ending in mean or _including_ mean were meant to be included in the final tidy data set.  I included them as it's easier to ignore them then to recreate them if not present.

## Script outline

### Look for working directory and create if not exist

The .zip file provided by the original authors unzips to a folder called "UCI HAR Dataset".  If that folder does not already exist in the current working directory, will attempt to download it.  The only parameter I pass to download.file() is mode = "wb", which seems to work on Windows.  Unclear which parameters might be necessary on a *nix or Apple system

#### Downlaod original data if necessary

Uses the cloudfront URL instead of the original university URL to minimize load on their server.  If unavailable, data should be available here: https://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

#### Extract raw data files

No parameters needed to unzip.  Seems to extra relative folders by default.  Not sure if this behavior is platform-independent
	

### Verify existence of proper data files/structure

I check for the first two levels of subfolders in the .zip archive: "./UCI HAR Dataset", "./UCI HAR Dataset/train" and "./UCI HAR Dataset/test".  I left further consistency checks on the data files as an exercise for the future, as it wasn't explicitly called for by the assignment

## Read in raw data

### Read the mean and std data from the raw measurements in from the X_test.txt and X_train.txt files 
### Read the activity identifiers in from the y_test.txt and y_train.txt files (these allow us to match the activity names later and become the Activity Name field)
### Read the subject data in from the subject_test.txt and subject_train.txt files.  Becomes the Subject field
### Read the variable names in from features.txt
    

### Merge test and training sets

#### Add the subject and activity columns for each data subset
#### Generate a column to hold an indication of whether the row came from the test or training sets.  Not required by the assignment, but seemed potentially useful
#### Merge the test and training sets together
#### Replace the activity ID numbers (1-6) with the text names from activity_labels.txt so we are tidy
#### Drop variables that do not contain mean or standard deviation data
#### Write the data out to ./all_data.csv so I can manually confirm the intermediate tidied data and make sure means calculated below work.  Comment if not needed
	
## Create subset of tidy data consisting of means of each measurement per activity and per subject

### Melt the resulting data set down preserving the activity and subject and test|train.  Toss the NA values (see Assumptions above)
### Use DCast to generate a mean for each combination of activity and subject
### Write out the data to a file ("./calculated means.csv")
