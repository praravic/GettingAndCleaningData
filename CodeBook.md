#Code Book

## Original dataset information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
	
### Attribute Information
For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.
	
## Transformations done on the original dataset
* Merge the original Training and Test data, along with Subject ID and Activity ID into one table.
* Add a column which mentions the Activity Name that is performed for that observation.
* Extract only the data that refer to mean and standard deviation of the measurements.
* Provide descriptive column names wherever applicable.
* Group by Activity and Subject and calculate the average of each column.
* Write the resulting tidyset into a file 'TidySet.txt'
	
##Tidy set - Data Dictionary

- Activity
	* Name of the activity performed by the subject
	* Factor with 6 levels - LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
			
- SubjectID
	* ID of the subject who performed the activity
	* Integer with a value range of 1 to 30

- The below are the mean/ standard deviation of the various (numeric) measurements collected during the experiment, along the X/Y/Z axis
	* tBodyAcc-mean-(X/Y/Z)
	* tBodyAcc-std-(X/Y/Z)
	* tGravityAcc-mean-(X/Y/Z)
	* tGravityAcc-std-(X/Y/Z)
	* tBodyAccJerk-mean-(X/Y/Z)
	* tBodyAccJerk-std-(X/Y/Z)
	* tBodyGyro-mean-(X/Y/Z)
	* tBodyGyro-std-(X/Y/Z)
	* tBodyGyroJerk-mean-(X/Y/Z)
	* tBodyGyroJerk-std-(X/Y/Z)
	* tBodyAccMag-mean
	* tBodyAccMag-std
	* tGravityAccMag-mean
	* tGravityAccMag-std
	* tBodyAccJerkMag-mean
	* tBodyAccJerkMag-std
	* tBodyGyroMag-mean
	* tBodyGyroMag-std
	* tBodyGyroJerkMag-mean
	* tBodyGyroJerkMag-std
	* fBodyAcc-mean-(X/Y/Z)
	* fBodyAcc-std-(X/Y/Z)
	* fBodyAcc-meanFreq-(X/Y/Z)
	* fBodyAccJerk-mean-(X/Y/Z)
	* fBodyAccJerk-std-(X/Y/Z)
	* fBodyAccJerk-meanFreq-(X/Y/Z)
	* fBodyGyro-mean-(X/Y/Z)
	* fBodyGyro-std-(X/Y/Z)
	* fBodyGyro-meanFreq-(X/Y/Z)
	* fBodyAccMag-mean
	* fBodyAccMag-std
	* fBodyAccMag-meanFreq
	* fBodyBodyAccJerkMag-mean
	* fBodyBodyAccJerkMag-std
	* fBodyBodyAccJerkMag-meanFreq
	* fBodyBodyGyroMag-mean
	* fBodyBodyGyroMag-std
	* fBodyBodyGyroMag-meanFreq
	* fBodyBodyGyroJerkMag-mean
	* fBodyBodyGyroJerkMag-std
	* fBodyBodyGyroJerkMag-meanFreq



 
			