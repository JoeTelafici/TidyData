# TidyData

Script outline:

1) look for working directory and create if not exist
2) look for data files
	2a) If not, download them
	2b) extract raw data files
	2c) Verify existence of proper data files/structure
3) Merge test and training sets
	3a) Assign test/training from filename
	3b) Assign activity from y_xxxx.txt
	3c) Assign subject from subject_xxxx.txt
4) Create subset of tidy data consisting of means of each measurement per activity and per subject

	