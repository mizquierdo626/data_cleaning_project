###Getting and Cleaning Data Project###
###Author: Mark Izquierdo###

	#1. Merges the training and the test sets to create one data set.
	#2. Extracts only the measurements on the mean and standard deviation for each measurement.
	#3. Uses descriptive activity names to name the activities in the data set
	#4. Appropriately labels the data set with descriptive variable names.
	#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	
	library(dplyr)
	library(data.table)

	#Assigning all data frames and name the columns
		features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
		activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
		subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
		x_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
		y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
		subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
		x_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
		y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")
	
	#Merges the training and test sets to create one data set
		X <- rbind(x_train, x_test)
		Y <- rbind(y_train, y_test)
		subject <- rbind(subject_train, subject_test)
	
	#cbind appends or combines data frames by columns
		Merged_Data <- cbind(subject, Y, X)

	#Extracts only the mean and standard deviation
		TidyData <- Merged_Data %>% select(subject, code, contains("mean"), contains("std"))

	#Names the variable names with proper descriptive variable names
		TidyData$code <- activities[TidyData$code, 2]
	#Correcting variable names
		names(TidyData)[2] = "activity"
		names(TidyData)<-gsub("Acc", "Accelerometer", names(TidyData))
		names(TidyData)<-gsub("Gyro", "Gyroscope", names(TidyData))
		names(TidyData)<-gsub("BodyBody", "Body", names(TidyData))
		names(TidyData)<-gsub("Mag", "Magnitude", names(TidyData))
		names(TidyData)<-gsub("^t", "Time", names(TidyData))
		names(TidyData)<-gsub("^f", "Frequency", names(TidyData))
		names(TidyData)<-gsub("tBody", "TimeBody", names(TidyData))
		names(TidyData)<-gsub("-mean()", "Mean", names(TidyData), ignore.case = TRUE)
		names(TidyData)<-gsub("-std()", "STD", names(TidyData), ignore.case = TRUE)
		names(TidyData)<-gsub("-freq()", "Frequency", names(TidyData), ignore.case = TRUE)
		names(TidyData)<-gsub("angle", "Angle", names(TidyData))
		names(TidyData)<-gsub("gravity", "Gravity", names(TidyData))

	#independent tidy data set with the average of each variable for each activity and each subject.
		FinalData <- TidyData %>%
			group_by(subject, activity) %>%
			summarize_all(list(mean=mean))
	#Create a text file of the FinalData with row.names = FALSE
		write.table(FinalData, "FinalData.txt", row.names = FALSE)

	FinalData














