feature <- read.table(".\\UCI HAR Dataset\\features.txt", sep=" ") 
feature[,2] <- tolower(feature[,2])
activityLabel <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", sep=" ")
activityLabel[,2] <- c("Walking","Walking Upstairs","Walking Downstairs","Sitting","Standing","Laying")
subjectTest  <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", sep=" ") 
xTrain  <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt", nrows=100, header=FALSE) 
activityTrain  <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt", sep=" ") 

featureMeanStd <- grep("mean|std",feature$V2)
names(xTrain) <- feature$V2
df <- data.frame(xTrain[,featureMeanStd])
