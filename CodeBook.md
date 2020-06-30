---
output:
  word_document: default
  html_document: default
---
# Peer-graded Assignment: Getting and Cleaning Data Course Project

##### Original Data

Experiments have been carried out with a group of 30 volunteer within an age braket of 19-48 year. Each person performed six activities (walking, walking upstairs,walking downstairs, sitting, standing and laying). With a smartphone, it was captures 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50HZ. 

For the raw data I use:

- 'features.txt': List of all features
- 'train/X_train.txt': Training set
- 'train/Y_train.txt' Training labes
- 'train/subject_train.txt' Training subjects
- 'test/X_test.txt': Test set
- 'test/Y_test.txt' Test labes
- 'test/subject_test.txt' Test subjects

You can find all the files [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##### Tranformation
The raw data was transformed by:
1. Merging the training and the test serts to create one data set.

2. Extracting only the measurements on the mean and standard deviation for each measurement.

3. Using descriptive activity names to name the activities in the data set.

4. Appropriately labels the data set with descriptive variable names.

5. Creating a second independent tidy data ser with the average of each variable for




