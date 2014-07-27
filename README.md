Getting and Cleaning Data - Final Project
===================

##Intro
This a description of the final project of the Getting and Cleaning Data course on Coursera.

The goal of the assignment was to obtain a set of source files and combined them into one, tidy data set.

Before executing the script, please verify your setup of R - the script requires 'plyr' package installed (http://plyr.had.co.nz/). If it's missing, you have to install it on your own.

##Data

Data used for the analysis are part of the Human Activity Recognition Using Smartphones Dataset provided by the Smartlab - Non Linear Complex Systems Laboratory in Genova, Italy.

Whole data set is located here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Download the file manually and extract the whole content into directory with the run_analysis.R. As an alternative you can uncomment lines 2:4 in the R script - the file will be downloaded and extracted automatically

The script executes properly only if the 'UCI HAR Dataset' directory and R script are stored in the same main directory.

### Files
Following files are required to execute the whole 'run_analysis.R' script properly
1. UCI HAR Dataset/test/subject_test.txt
2. UCI HAR Dataset/test/X_test.txt
3. UCI HAR Dataset/test/y_test.txt
4. UCI HAR Dataset/train/subject_train.txt
5. UCI HAR Dataset/train/X_train.txt
6. UCI HAR Dataset/train/y_train.txt
7. UCI HAR Dataset/features.txt
8. UCI HAR Dataset/activity_labels.txt

## Assumptions
  files location
  plyr package 