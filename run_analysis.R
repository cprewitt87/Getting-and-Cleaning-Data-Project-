library(plyr)

# Read Data
ActivityTest  <- read.table("test/Y_test.txt", col.names = c("ActivityId", "Activity"))
ActivityTrain <- read.table("train/Y_train.txt", col.names = c("ActivityId", "Activity"))

SubjectTrain <- read.table("train/subject_train.txt")
SubjectTest  <- read.table("test/subject_test.txt")

FeaturesTest  <- read.table("test/X_test.txt" )
FeaturesTrain <- read.table("train/X_train.txt")

#  1. Merges the training and the test sets to create one data set.
Subject <- rbind(SubjectTrain, SubjectTest)
Activity <- rbind(ActivityTrain, ActivityTest)
Features <- rbind(FeaturesTrain, FeaturesTest)

dataCombine <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityId"))[,2]
names(data_name) <- dataCombine

#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
data <- data_name[,grepl("mean|std|Subject|ActivityId", names(data_name))]

#  3. Uses descriptive activity names to name the activities in the data set.
activities <- read.table("activity_labels.txt")

data <- join(data, activity, by = "ActivityId", match = "first")
data <- data[,-1]

#  4. Appropriately labels the data set with descriptive variable names. 
names(data)<-gsub("^t", "time", names(Data))
names(data)<-gsub("^f", "frequency", names(Data))
names(data)<-gsub("Acc", "Accelerometer", names(Data))
names(data)<-gsub("Gyro", "Gyroscope", names(Data))
names(data)<-gsub("Mag", "Magnitude", names(Data))
names(data)<-gsub("BodyBody", "Body", names(Data))

#  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

data_averages <- ddply(data, c("Subject","Activity"), numcolwise(mean))
write.table(data_averages, file = "tidydata.txt")
