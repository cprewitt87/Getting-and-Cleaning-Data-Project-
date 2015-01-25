Getting-and-Cleaning-Data-Project-
This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", from coursera.

The original data are accelerometer and gyroscope data, captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. From the original data a subset of mean and standard deviation values were chosen for all subjects and activities. The mean was subsequently calculated on the subset and grouped by subject and activity.  This data was collected for 30 test subjects during 6 different possible activities.  A full description is available at the site where the data was obtained: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset being used is: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Files Include:
README.md - Explains how scripts work and how they are connected
codebook.md - Information about the raw and tidy data set and also how to transform them
run_analysis.R - R script to transform raw data to tidy data
