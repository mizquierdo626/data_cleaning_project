Getting and Cleaning Data Project
###Author: Mark Izquierdo###


Dataset:

	--> UC Irvince Repo: Human Activity Recognition Using Smartphones Data Set

Abstract:

	--> Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


Files:

	--> run_analysis.R performs data extraction and cleaning to complete the course project following these steps

		1. Merges the training and the test sets to create one data set.

		2. Extracts only the measurements on the mean and standard deviation for each measurement.

		3. Uses descriptive activity names to name the activities in the data set

		4. Appropriately labels the data set with descriptive variable names.

		5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

	--> CodeBook.md a code book that describes the variables, the data, and any transformations or work that I performed to clean up the data

	--> FinalData.txt is the result of the run_analysis.R script