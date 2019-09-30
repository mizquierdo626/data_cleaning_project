Getting and Cleaning Data Project

###Author: Mark Izquierdo###

Description:

The run_analysis.R is a script that was made to perform data extraction and cleaning to demonstrate the ability to prepare tidy data that can be used for data analysis. The script goes through a few steps to organize the data before performing the 5 steps required to complete the course project.


Variables:

	1. Features <- come from the accelerometer and gyroscope 3-axial signals tAcc-XYZ and tGyro-XYZ
	2. Activies <- activities performed when the measurements were observed.
	3. Subject_Test <- Test data of 9/30 volunteer test subjects being observed
	4. X_test <- recorded features test data
	5. Y_test <- recorded test data of activities' code labels
	6. subject_train <- train data of 21/30 volunteer subjects being observed
	7. X_train <- recorded features train data
	8. Y_train <- train data of activities' code labels


The Data:

	--> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

	--> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



Transformations/work:

	1. Merges the training and the test sets to create one data set.

	2. Extracts only the measurements on the mean and standard deviation for each measurement.

	3. Uses descriptive activity names to name the activities in the data set

	4. Appropriately labels the data set with descriptive variable names.

	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.














