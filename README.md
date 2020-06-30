
# About run_analysis.R

The scrip performs the next 5 steps

1. Merge the training and the test serts to create one data set.
    1.1 Reads files
      -list of features
      -training tables
      -testing tables
    1.2 Assigns names to the columns
    1.3 Merges all daya in one table
    
2. Extracts only the measurements on the mean and standard deviation for each measurement.
    2.1 Removes features that do not include 'mean' or 'std' from the features and creates a new array
    2.2 Include 'Subject' and 'Activity' to the array
    2.3 subset the data frame into a new one

3. Uses descriptive activity names to name the activities in the data set.
    3.1 Converts features array as factors
    3.2 Replaces the number into a name in the subjest column

4. Appropriately labels the data set with descriptive variable names.
    4.1 Changes the abbreviation into full names

5. Creates a second independent tidy data ser with the average of each variable for
    5.1 Creates a new data frame
    5.2 Converts the new data frame into a txt file


