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
    ## 2) look for data files
    if (!file.exists("./UCI HAR Dataset")) {
        
        ## 2a) If not, download them
        message ("Data directory not found ...  Downloading and extracting raw data")
        if (download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./ucihardata.zip", mode = "wb")){
            message ("Could not not download data file ... exiting")
            return (0)
        }
    
        
        ## 2b) extract raw data files
        else {
            message ("Extracting data...")
            unzip ("./ucihardata.zip")
        }
    }

    ## 2c) Verify existence of proper data files/structure
    else {
        ## Checking for proper directory structure
        basedir <- paste0(getwd(), "/UCI Har Dataset")
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
        ## to-do check for rest of data files, but good enough for now
 
        
        if (nchar(missingfiles) > 0) 
            print (paste("ERROR: one or more data directories not present:", missingfiles, "."))
    }
    

    ## 3) Read in raw data
    message ("Reading test data")
    test_data <- read.delim(paste0(testdir, "/X_test.txt"), header=FALSE, sep="", na.strings = "-1.0000000e+000")
    message ("Reading test activities")
    test_activities <- read.delim(paste0(testdir, "/y_test.txt"), header=FALSE, sep="")
    message ("Reading test subjects")
    test_subjects <- read.delim(paste0(testdir, "/subject_test.txt"), header=FALSE, sep="")
    
    message ("Reading training data")
    train_data <- read.delim(paste0(traindir, "/X_train.txt"), header=FALSE, sep="", na.strings = "-1.0000000e+000")
    message ("Reading training activities")
    train_activities <- read.delim(paste0(traindir, "/y_train.txt"), header=FALSE, sep="")
    message ("Reading training subjects")
    train_subjects <- read.delim(paste0(traindir, "/subject_train.txt"), header=FALSE, sep="")
    
    message ("Reading column names")
    column_names <- read.delim(paste0(basedir, "/features.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
    mycolumn_names <- column_names[,2]
    mycolumn_names <- c("Subject", "Activity", mycolumn_names)
    message ("Reading activity names")
    activity_names <- read.delim(paste0(basedir, "/activity_labels.txt"), header=FALSE, sep="")
    

    ## 3a) Assign test/training from filename
    message ("Reading activity names")
    test_data <- cbind( c(rep("test", dim (test_data)[1])), test_data)
    train_data <- cbind( c(rep("train", dim (train_data)[1])), train_data)
    
    
    
    ## 3b) Assign activity from y_xxxx.txt
    message ("Assigning activity from y_xxxx.txt")
    train_data <- cbind( train_activities, train_data)
    test_data <- cbind( test_activities, test_data)
    
    
    ## 3dc) Assign subject from subject_xxxx.txt
    message ("Assigning subject from subject_xxxx.txt")
    train_data <- cbind( train_subjects, train_data)
    test_data <- cbind( test_subjects, test_data)
    
    
    ## 3d) Assign column names from features.txt
    message ("Assigning column names from features.txt")
    column_names(train_data) <- mycolumn_names
    column_names(test_data) <- mycolumn_names
    
    ## 3e) Merge test and training sets
    message ("Merge test and training sets")
    all_data <- rbind(test_data, train_data)
    
    ##head(str(alldata))
    message ("Writing output tidy data")
    write.csv(all_data, file = "./all_data.csv")
    ##head(str(train_data))
    
}    


calculate_means <- function (datafile) {

    ## 4) Create subset of tidy data consisting of means of each measurement per activity and per subject

}