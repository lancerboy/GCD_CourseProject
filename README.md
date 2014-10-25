GCD_CourseProject
=================
This directory contains 2 files other than the README.md
1. run_analysis.R
2. CodeBook.md

1. run_analysis.R
This file performs the following analysis:
A. Merges the training and the test sets to create one data set 
B. Extracts only the measurements on the mean and standard deviation for each measurement.
C. Uses descriptive activity names to name the activities in the data set.
D. Appropriately labels the data set with descriptive variable names.
E. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To the dataset obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

This script assumes that you have downloaded and unzipped the file first and set your working directory to the parent unzipped folder ("UCI HAR Dataset") which contains the rest of the files needed for this script to run.

The dataset represents data collected from the accelerometers from the Samsung Galaxy S smartphone as part of study of 30 participants taking part in 6 different activites listed in the activity_labels.txt file. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


2. CodeBook.md
This describes the variables, the data, and any transformations or work that was performed to clean up the data

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
