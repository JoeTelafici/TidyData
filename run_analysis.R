###############################################################################
##
##    Joe Telafici
##    joe@telafici.com
##    Johns Hopkins Data Science - Getting and Cleaning Data
##    Week 4 Assignment - Tidy Data
##    Analysis Script
##
###############################################################################


## This script will retrieve, extract, merge and tidy the University of 
## California Irvine's Machine Learning Repository's Human Activity 
## Recognition Using SmartPhones Data Set
## Available at https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## 1) look for working directory and create if not exist

mergeandtidy <- function (){

    if (!file.exists("./UCI HAR Dataset")) {
        message ("Data directory not found ...  Downloading and extracting raw data")
        if (download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./ucihardata.zip", mode = "wb")){
            message ("Could not not download data file ... exiting")
            return (0)
        }
        else {
            message ("Extracting data...")
            unzip ("./ucihardata.zip")
        }
        
        ## Checking for proper directory structure
        basedir <- "./UCI Har Dataset"
        testdir <- paste (basedir, "/test", sep="")
        print (basedir)
        traindir <- paste (basedir, "/train", sep ="")
        missingfiles <- ""
        if (!file.exists(basedir)) {
            missingfiles <- paste (missingfiles, basedir, sep=" : ")
        }
        else {
            message ("Found basedir")
        }
        if (!file.exists(testdir)) {
            missingfiles <- paste (missingfiles, testdir, sep=" : ")
        }
        else {
            message ("Found testdir")
        }
        if (!file.exists(traindir)) {
            missingfiles <- paste (missingfiles, traindir, sep=" : ")
        }
        else {
            message ("Found traindir")
        }
            
    }
    
    
    
    ## 2) look for data files
    ## 2a) If not, download them
    ## 2b) extract raw data files
    ## 2c) Verify existence of proper data files/structure
    ## 3) Merge test and training sets
    ## 3a) Assign test/training from filename
    ## 3b) Assign activity from y_xxxx.txt
    ## 3c) Assign subject from subject_xxxx.txt
    
}    


calculate_means <- function (datafile) {

    ## 4) Create subset of tidy data consisting of means of each measurement per activity and per subject

}