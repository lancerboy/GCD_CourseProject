This describes the variables, the data, and any transformations or work that was performed to clean up the data

The dataset includes the following files:
=========================================

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

Process:
======
The following transformations / steps were done to clean up the data:
1. The data from the 3 files in the "Test" folder were extracted into R
2. Appropriate variable names were assigned to each of the variables from the "Test" files
3. The 3 "Test" files were column bound into a single "Test" file
4. The data from the 3 files in the "Train" folder were extracted into R
5. Appropriate variable names were assigned to each of the variables from the "Train" files
6. The 3 "Train" files were column bound into a single "Train" file
7. The "Test" file and "Train" file were combined into a single "Dataset" file using row binding (since they had the same number of columns in the same positions)
8. Columns that contained variables for mean and standard deviation were subsetted along with the variables for Subject and Activity using regular expressions
9. Activity Codes were replaced with descriptive Activity Labels by matching them according the activity_labels.txt file
10. The dplyr package was used to group the dataset by Subject & Activity and report the mean for each column
