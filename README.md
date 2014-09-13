1) Content of repository:

1. README.md - This file describing how run_analysis.R transforms the RAW data into the tidy data.
2. CodeBook.md - A code book describing each variable and its values in the tidy data set.
3. run_analysis.R - R script is the instruction list that reads the RAW data, processes it and creates the tidy ouput data
4. tidy.txt - the tidy output data set 
5. UCI HAR DATASET/* - Folder containing the RAW data. 

The latter data set was published in the following publication:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


2) Instruction list/Description of run_analysis.R
The following stepts summarize the transformation implemented by the R-script.

  1. load table containing feature labels into memory
  2. lower case the labels of the features
  3. identify the indeces of all feature labels which contain mean or std
  4. load the table of activity codes and labels into memory
  5. replace activity labels with more readable labels
  6. load the subjects  (both training and test) corresponding to the observation into memory
  7. load all feature values of all observations (both training and test) into memory having the feature names as column names
  8. load the activities of all observations (both training and test) into memory
  9. create a dataframe containing all subject, activity label and features calculating mean or standard deviation of all observations
  10. reshape the dataframe to have the feature names as values in column "variable" and the feature values in column "value"
  11. calculate the mean of feature values for each combination of subject and activity
  12. output a file containing the tidy data set

