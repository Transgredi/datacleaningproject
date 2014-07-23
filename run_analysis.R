#download and save file

#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#download.file(url,"dataset.zip","curl")
#unzip("dataset")

file.testsubject    <- "UCI HAR Dataset/test/subject_test.txt"
file.testx          <- "UCI HAR Dataset/test/X_test.txt"
file.testy          <- "UCI HAR Dataset/test/y_test.txt"
file.trainsubject   <- "UCI HAR Dataset/train/subject_train.txt"
file.trainx         <- "UCI HAR Dataset/train/X_train.txt"
file.trainy         <- "UCI HAR Dataset/train/y_train.txt"

tests <- read.table(file.testsubject)
testx <- read.table(file.testx, colClasses = "character")
testy <- read.table(file.testy)
trains <- read.table(file.trainsubject)
trainx <- read.table(file.trainx, colClasses = "character")
trainy <- read.table(file.trainy)
print("All files read into sets.")

dim(tests)
dim(testx)
dim(testy)
dim(trains)
dim(trainx)
dim(trainy)