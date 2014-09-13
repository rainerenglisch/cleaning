# load table containing feature labels into memory
feature <- read.table("./UCI HAR Dataset/features.txt", sep=" ", col.names=c("index","label"))
# lower case the labels of the features
feature$label <- tolower(feature$label)
# identify the indeces of all feature labels which contain
# mean or std
featureMeanStd <- grep("mean|std",feature$label)

# load the table of activity codes and labels into memory
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ", col.names=c("code","label"))
# replace activity labels with more readable labels
activity$label <- c("Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying")

# load the subjects corresponding to the observation into memory
subject <- rbind(read.table("./UCI HAR Dataset/train/subject_train.txt", sep=" ", col.names=c("subject")),
                 read.table("./UCI HAR Dataset/test/subject_test.txt", sep=" ", col.names=c("subject")))

# load all feature values of all observations into memory
# having the feature names as column names
featureObservations <- rbind(read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, col.names=c(feature$label)),
                             read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, col.names=c(feature$label)))

# load the activities of all observations into memory
activityObservation <- rbind(read.table("./UCI HAR Dataset/train/y_train.txt", sep=" ", col.names=c("code")),
                             read.table("./UCI HAR Dataset/test/y_test.txt", sep=" ", col.names=c("code")))

# create a dataframe containing all subject, activity label and 
# features calculating mean or standard deviation of all observations
df <- data.frame(subject,activity = activity[activityObservation$code,2], featureObservations[,featureMeanStd])

# load library for melt and acast function
require(reshape2)

# reshape the dataframe to have the feature names as values in column "variable"
# and the feature values in column "value"
melted <- melt(df, id.vars = c("subject","activity"))

# calculate the mean of feature values for each combination of subject and activity
cast <- acast(melted, subject + activity ~ variable, mean)

# write a file containing the second tidy data set
write.table(cast,"tidy.txt",row.name=TRUE) 