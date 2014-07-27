Getting and Cleaning Data - Final Project
===================

##Intro
This a description of the final project of the Getting and Cleaning Data course on Coursera.

The goal of the assignment was to obtain a set of source files and combined them into one, tidy data set with mean vaules of means and standard deviations of measurments recorded by Smartlab team. Detailed information can be found in the `README.txt` file written by the authors of the experiment.

Before executing the script, please verify your setup of R - the script requires `plyr` package installed (http://plyr.had.co.nz/). If it's missing, you have to install it on your own.

##Data

Data used for the analysis are part of the Human Activity Recognition Using Smartphones Dataset provided by the Smartlab - Non Linear Complex Systems Laboratory in Genova, Italy.

Whole data set is located here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Download the file manually and extract the whole content into directory with the `run_analysis.R`. As an alternative you can uncomment lines 2:4 in the R script - the file will be downloaded and extracted automatically

The script executes properly only if the `UCI HAR Dataset` directory and R script are stored in the same main directory.

### Files
Following files in the indicated locations are required to execute the whole `run_analysis.R` script properly:
* UCI HAR Dataset/test/subject_test.txt
* UCI HAR Dataset/test/X_test.txt
* UCI HAR Dataset/test/y_test.txt
* UCI HAR Dataset/train/subject_train.txt
* UCI HAR Dataset/train/X_train.txt
* UCI HAR Dataset/train/y_train.txt
* UCI HAR Dataset/features.txt
* UCI HAR Dataset/activity_labels.txt

##Script tasks

The script performs following tasks:
* Load data stored in selected downloaded files into data frames (including features names and activity labels)
* Combine data sets:
  + Bind train actual data with subject ID's and activity labels into one data frame
  + Bind test actual data with subject ID's and activity labels into one data frame
  + Give correct names for variables (AKA features)