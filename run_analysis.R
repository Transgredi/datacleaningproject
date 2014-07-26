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
file.features       <- "UCI HAR Dataset/features.txt"
file.labels         <- "UCI HAR Dataset/activity_labels.txt"

features      <- read.table(file.features)
labels        <- read.table(file.labels)
names(labels) <- c("Activity", "Name")

tests         <- read.table(file.testsubject)
testx         <- read.table(file.testx)
testy         <- read.table(file.testy)
names(tests)  <- "Subjects"
tests$Type    <- "Test"
names(testy)  <- c("Activity")
names(testx)  <- features$V2

trains        <- read.table(file.trainsubject)
trainx        <- read.table(file.trainx)
trainy        <- read.table(file.trainy)
names(trains) <- "Subjects"
trains$Type   <- "Train"
names(trainy) <- c("Activity")
names(trainx) <- features$V2

print("All files read into sets.")

combotrain            <- cbind(trainx, trains)
combotrain            <- cbind(combotrain, trainy)
combotest             <- cbind(testx, tests)
combotest             <- cbind(combotest, testy)
combofinal            <- rbind(combotrain, combotest)
combofinal            <- arrange(join(combofinal, labels), Activity)
combofinal$Activity   <- as.factor(combofinal$Activity)