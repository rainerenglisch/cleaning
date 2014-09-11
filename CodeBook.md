"Was code book submitted to GitHub that modifies and updates the codebooks available to you with the data to indicate all the variables and summaries you calculated, along with units, and any other relevant information?"

This  code book describes each variable and its values in the tidy data set tidy2.txt.

1) Why is the data set tidy?

The data set in the file tidy2.txt is tidy because it fulfills the following principles of tidy data that were presented in our course:
1. Each variable you measure should be in one column
  Explanation: Every considered (average) measurement of a feature has its own column. E.g. "tbodyacc-mean()-y"" or "tgravityacc-arcoeff()-x,3""
2. Each different observation of that variable should be in a different row
  Explanation: Every row consists of the average measurement of a combination of subject and activity. 
  Subject and activity are indicated in the row names. E.g. 1_Laying, that is subject "1" and activity "Laying"
  
2) Desciption of each variable

The features and its units are described in detail in UCI HAR Dataset/features_info.txt.
In the output data set these numeric values are averaged for each combination of subject and activity. The combination of subject and activity is aggregated in the row names of the tidy ouput data set.
  
  
