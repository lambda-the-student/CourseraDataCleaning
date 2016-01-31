# Getting and Cleaning Data Course Project: Code Book

## Data Source

Based on [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
provided by course instructors which is, in turn, has been derived from
[human activity data](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
collected using smartphones.

See documentation included in that data set for information about collected 
data and it's interpretation.

## Data Set Format

Data set consists from single data file, ms-aggregate.txt, which is a text,
space-delimited table with header specifying feature names.

Current version of the data set contains 180 observations with 68 features.

## Data Set Features

* subject: subject who performed the activity
  - integer: 1-30

* activity:
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING

Remaining features are of similar nature: they represent mean value of some
variable from the original data set averaged over groups of measurements
with the same subject and activity. Their correspondence to the source
data set is summarized in table below:
 
| Feature Name  | Original Feature Name | Original Feature Index |
| ---------------------- | ------------------- | ------------------ |
| tbodyaccmeanx | tBodyAcc-mean()-X | 1 |
| tbodyaccmeany | tBodyAcc-mean()-Y | 2 |
| tbodyaccmeanz | tBodyAcc-mean()-Z | 3 |
| tbodyaccstdx | tBodyAcc-std()-X | 4 |
| tbodyaccstdy | tBodyAcc-std()-Y | 5 |
| tbodyaccstdz | tBodyAcc-std()-Z | 6 |
| tgravityaccmeanx | tGravityAcc-mean()-X | 41 |
| tgravityaccmeany | tGravityAcc-mean()-Y | 42 |
| tgravityaccmeanz | tGravityAcc-mean()-Z | 43 |
| tgravityaccstdx | tGravityAcc-std()-X | 44 |
| tgravityaccstdy | tGravityAcc-std()-Y | 45 |
| tgravityaccstdz | tGravityAcc-std()-Z | 46 |
| tbodyaccjerkmeanx | tBodyAccJerk-mean()-X | 81 |
| tbodyaccjerkmeany | tBodyAccJerk-mean()-Y | 82 |
| tbodyaccjerkmeanz | tBodyAccJerk-mean()-Z | 83 |
| tbodyaccjerkstdx | tBodyAccJerk-std()-X | 84 |
| tbodyaccjerkstdy | tBodyAccJerk-std()-Y | 85 |
| tbodyaccjerkstdz | tBodyAccJerk-std()-Z | 86 |
| tbodygyromeanx | tBodyGyro-mean()-X | 121 |
| tbodygyromeany | tBodyGyro-mean()-Y | 122 |
| tbodygyromeanz | tBodyGyro-mean()-Z | 123 |
| tbodygyrostdx | tBodyGyro-std()-X | 124 |
| tbodygyrostdy | tBodyGyro-std()-Y | 125 |
| tbodygyrostdz | tBodyGyro-std()-Z | 126 |
| tbodygyrojerkmeanx | tBodyGyroJerk-mean()-X | 161 |
| tbodygyrojerkmeany | tBodyGyroJerk-mean()-Y | 162 |
| tbodygyrojerkmeanz | tBodyGyroJerk-mean()-Z | 163 |
| tbodygyrojerkstdx | tBodyGyroJerk-std()-X | 164 |
| tbodygyrojerkstdy | tBodyGyroJerk-std()-Y | 165 |
| tbodygyrojerkstdz | tBodyGyroJerk-std()-Z | 166 |
| tbodyaccmagmean | tBodyAccMag-mean() | 201 |
| tbodyaccmagstd | tBodyAccMag-std() | 202 |
| tgravityaccmagmean | tGravityAccMag-mean() | 214 |
| tgravityaccmagstd | tGravityAccMag-std() | 215 |
| tbodyaccjerkmagmean | tBodyAccJerkMag-mean() | 227 |
| tbodyaccjerkmagstd | tBodyAccJerkMag-std() | 228 |
| tbodygyromagmean | tBodyGyroMag-mean() | 240 |
| tbodygyromagstd | tBodyGyroMag-std() | 241 |
| tbodygyrojerkmagmean | tBodyGyroJerkMag-mean() | 253 |
| tbodygyrojerkmagstd | tBodyGyroJerkMag-std() | 254 |
| fbodyaccmeanx | fBodyAcc-mean()-X | 266 |
| fbodyaccmeany | fBodyAcc-mean()-Y | 267 |
| fbodyaccmeanz | fBodyAcc-mean()-Z | 268 |
| fbodyaccstdx | fBodyAcc-std()-X | 269 |
| fbodyaccstdy | fBodyAcc-std()-Y | 270 |
| fbodyaccstdz | fBodyAcc-std()-Z | 271 |
| fbodyaccjerkmeanx | fBodyAccJerk-mean()-X | 345 |
| fbodyaccjerkmeany | fBodyAccJerk-mean()-Y | 346 |
| fbodyaccjerkmeanz | fBodyAccJerk-mean()-Z | 347 |
| fbodyaccjerkstdx | fBodyAccJerk-std()-X | 348 |
| fbodyaccjerkstdy | fBodyAccJerk-std()-Y | 349 |
| fbodyaccjerkstdz | fBodyAccJerk-std()-Z | 350 |
| fbodygyromeanx | fBodyGyro-mean()-X | 424 |
| fbodygyromeany | fBodyGyro-mean()-Y | 425 |
| fbodygyromeanz | fBodyGyro-mean()-Z | 426 |
| fbodygyrostdx | fBodyGyro-std()-X | 427 |
| fbodygyrostdy | fBodyGyro-std()-Y | 428 |
| fbodygyrostdz | fBodyGyro-std()-Z | 429 |
| fbodyaccmagmean | fBodyAccMag-mean() | 503 |
| fbodyaccmagstd | fBodyAccMag-std() | 504 |
| fbodybodyaccjerkmagmean | fBodyBodyAccJerkMag-mean() | 516 |
| fbodybodyaccjerkmagstd | fBodyBodyAccJerkMag-std() | 517 |
| fbodybodygyromagmean | fBodyBodyGyroMag-mean() | 529 |
| fbodybodygyromagstd | fBodyBodyGyroMag-std() | 530 |
| fbodybodygyrojerkmagmean | fBodyBodyGyroJerkMag-mean() | 542 |
| fbodybodygyrojerkmagstd | fBodyBodyGyroJerkMag-std() | 543 |

## Data Set Transformation Procedure

Data transformation process can be performed in one step running provided 
script `run_analysis.R` from the directory containing source data set
in a subdirectory named `UCI HAR Dataset`.

This script implements steps specified in project instructions:

> 1. Merges the training and the test sets to create one data set.

> 2. Extracts only the measurements on the mean and standard deviation for 
  each measurement.

> 3. Uses descriptive activity names to name the activities in the data set.

> 4. Appropriately labels the data set with descriptive variable names.

> 5. From the data set in step 4, creates a second, independent tidy data set 
  with the average of each variable for each activity and each subject.

Note that for step 4 the notion of "descriptive" variable names is in the eye
of the beholder. So, variable names simply have been normalized, i.e. converted
in lowercase with all non-letter characters removed.

