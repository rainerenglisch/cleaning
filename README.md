"I was able to follow the README in the directory that explained what the analysis files did. "

1) Content of repository:

README.md - This file.
CodeBook.md - A code book describing each variable and its values in the tidy data set.
run_analysis.R - R script is the instruction list that reads the RAW data, processes it and creates the tidy ouput data
tidy.txt - the tidy output data set 
UCI HAR DATASET/* - Folder containing the RAW data. 


2) Instruction list/Description of run_analysis.R

  1. load table containing feature labels into memory
  2. lower case the labels of the features
  3. identify the indeces of all feature labels which contain mean or std
  4. load the table of activity codes and labels into memory
  5. replace activity labels with more readable labels
  6. load the subjects corresponding to the observation into memory
  7. load all feature values of all observations into memory having the feature names as column names
  8. load the activities of all observations into memory
  9. create a dataframe containing all subject, activity label and features calculating mean or standard deviation of all observations
  10. reshape the dataframe to have the feature names as values in column "variable" and the feature values in column "value"
  11. calculate the mean of feature values for each combination of subject and activity
  12. output  a file containing the tidy data set

