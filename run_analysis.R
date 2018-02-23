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



mergeandtidy <- function (){
    ## look for data files
    if (!file.exists("./UCI HAR Dataset")) {
        
        ## If not, download them
        message ("Data directory not found ...  Downloading and extracting raw data")
        if (download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "./ucihardata.zip", mode = "wb")){
            message ("Could not not download data file ... exiting")
            return (0)
        }
    
        
        ## extract raw data files
        else {
            message ("Extracting data...")
            unzip ("./ucihardata.zip")
        }
    }

    ## Verify existence of proper data files/structure
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
    

    ## Read in raw data
    
    message ("Reading test data")
    
    ## Assume all exact -1 values are NA.  May not be true, but unlikely in electrical measurements.  See Readme.md
    test_data <- read.delim(paste0(testdir, "/X_test.txt"), header=FALSE, sep="", na.strings = "-1.0000000e+000")
    message ("Reading test activities")
    test_activities <- read.delim(paste0(testdir, "/y_test.txt"), header=FALSE, sep="")
    message ("Reading test subjects")
    test_subjects <- read.delim(paste0(testdir, "/subject_test.txt"), header=FALSE, sep="")
    
    message ("Reading training data")
    
    ## Assume all exact -1 values are NA.  May not be true, but unlikely in electrical measurements.  See Readme.md
    train_data <- read.delim(paste0(traindir, "/X_train.txt"), header=FALSE, sep="", na.strings = "-1.0000000e+000")
    
    message ("Reading training activities")
    train_activities <- read.delim(paste0(traindir, "/y_train.txt"), header=FALSE, sep="")
    
    message ("Reading training subjects")
    train_subjects <- read.delim(paste0(traindir, "/subject_train.txt"), header=FALSE, sep="")
    
    message ("Reading column names")
    column_names <- read.delim(paste0(basedir, "/features.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
    mycolumn_names <- column_names[,2]
    mycolumn_names <- c("Subject", "Activity", "DataSubset", mycolumn_names)
    message ("Reading activity names")
    activity_names <- read.delim(paste0(basedir, "/activity_labels.txt"), header=FALSE, sep="")
    colnames(activity_names) <- c("Activity", "ActivityName")
    
    ## Assign test/training from filename
    message ("Reading activity names")
    test_data <- cbind( c(rep("test", dim (test_data)[1])), test_data)
    train_data <- cbind( c(rep("train", dim (train_data)[1])), train_data)
    
    ## Assign activity from y_xxxx.txt
    message ("Assigning activity from y_xxxx.txt")
    train_data <- cbind( train_activities, train_data)
    test_data <- cbind( test_activities, test_data)
    
    ## Assign subject from subject_xxxx.txt
    message ("Assigning subject from subject_xxxx.txt")
    train_data <- cbind( train_subjects, train_data)
    test_data <- cbind( test_subjects, test_data)
    
    ## Assign column names from features.txt
    message ("Assigning column names from features.txt")
    colnames(train_data) <- mycolumn_names
    colnames(test_data) <- mycolumn_names
    
    ## Merge test and training sets
    message ("Merge test and training sets")
    all_data <- rbind(test_data, train_data)
    
    ## Replacing activity names
    message ("Merging Activity Names")
    all_data<-merge(activity_names, all_data, by.x="Activity", by.y = "Activity", sort=FALSE)
    
    ## Toss irrelevant columns
    all_data <- all_data[, c("DataSubset", "ActivityName", "Subject", c(grep("mean|std", colnames(all_data), value = TRUE)))]
    
    ## write out combined & tidied original data set
    message (paste0("Writing full tidy data file to ", getwd(), "/all_data.csv"))
    write.csv(all_data, file = "./all_data.csv", row.names=FALSE)
    
    ## generate means of combined & tidied data variables per subject and activity
    calculate_means(all_data)
}    


calculate_means <- function (datatbl) {

    ## Attempt to load necessary libraries
    library(reshape2)
    library(dplyr)
    
    ## Create subset of tidy data consisting of means of each measurement per activity and per subject
    message ("Melting data")
    melted<-melt (datatbl, id.vars =c("ActivityName", "Subject", "DataSubset"), measure.vars=c(grep("mean|std", colnames(datatbl))), na.rm=TRUE)
    
    message ("Casting data")
    final_subset<-dcast(melted, Subject + ActivityName ~ variable, mean)
    
    ## Write out final tidy data set
    message (paste0("Writing mean data file to ", getwd(), "/calculated means.csv"))
    write.csv(final_subset, file = "./calculated means.csv", row.names=FALSE)

}