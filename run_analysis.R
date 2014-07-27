#Uncomment lines 2:4 to automatically download, save and unzip the file.
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(url,"dataset.zip","curl")
#unzip("dataset.zip")

#plyr package is required to combine tables using arrange() and join() commands.
library(plyr)

#File names and location loaded to individual variables.
file.testsubject    <- "UCI HAR Dataset/test/subject_test.txt"
file.testx          <- "UCI HAR Dataset/test/X_test.txt"
file.testy          <- "UCI HAR Dataset/test/y_test.txt"
file.trainsubject   <- "UCI HAR Dataset/train/subject_train.txt"
file.trainx         <- "UCI HAR Dataset/train/X_train.txt"
file.trainy         <- "UCI HAR Dataset/train/y_train.txt"
file.features       <- "UCI HAR Dataset/features.txt"
file.labels         <- "UCI HAR Dataset/activity_labels.txt"

#Load features names and activity labels into data frames.
features      <- read.table(file.features)
labels        <- read.table(file.labels)

#Manually insert column names for "labels" data frame.
names(labels) <- c("activid", "activname")

#Read actual data of test subjects.
tests         <- read.table(file.testsubject)
testx         <- read.table(file.testx)
testy         <- read.table(file.testy)
names(tests)  <- "subjects"
tests$type    <- "test"
names(testy)  <- c("activid")
names(testx)  <- features$V2

#Read actual data of train subjects.
trains        <- read.table(file.trainsubject)
trainx        <- read.table(file.trainx)
trainy        <- read.table(file.trainy)
names(trains) <- "subjects"
trains$type   <- "train"
names(trainy) <- c("activid")
names(trainx) <- features$V2

#Combine all train data horizontally by binding columns:
#actual values, subjects ID's and activities ID's.
combotrain            <- cbind(trainx, trains)
combotrain            <- cbind(combotrain, trainy)
#Combine all test data horizontally by binding columns:
#actual values, subjects ID's and activities ID's.
combotest             <- cbind(testx, tests)
combotest             <- cbind(combotest, testy)

#combine train and test data vertically by row binding.
combofinal            <- rbind(combotrain, combotest)
#add new column with activities names
combofinal            <- arrange(join(combofinal, labels), activid)
#define column with activity labels as factors.
combofinal$activid    <- as.factor(combofinal$activid)
combofinal$activname  <- as.factor(combofinal$activname)

#get numbers of columns which contain phrases with "mean" or "std".
n <- names(combofinal)
m <- grep("*[Mm]ean*",n)
s <- grep("*std*",n)

#Select only those columns with mean or standard deviation figures and preserve
#columns with subjects ID's and activity labels.
combofinal <- combofinal[,c(m,s,562:565)]

#Calculate mean values for all columns for each subject in a given activity
agr <- aggregate(combofinal[,1:86],
  list(activname = combofinal$activname, subjects = combofinal$subjects), mean)


#Renaming column names to match general convention of tidy data
#and to make them shorter.
#All column names are resolved in the CodeBook.md file.
names(agr)[3]   <- "tbodyaccmx";            names(agr)[4]    <- "tbodyaccmy";
names(agr)[5]   <- "tbodyaccmz";            names(agr)[6]    <- "tgravaccmx";
names(agr)[7]   <- "tgravaccmy";            names(agr)[8]    <- "tgravaccmz";
names(agr)[9]   <- "tbodyjerkaccmx";        names(agr)[10]   <- "tbodyjerkaccmy";
names(agr)[11]  <- "tbodyjerkaccmz";        names(agr)[12]   <- "tbodygyromx";
names(agr)[13]  <- "tbodygyromy";           names(agr)[14]   <- "tbodygyromz";
names(agr)[15]  <- "tbodygyrojerkmx";       names(agr)[16]   <- "tbodygyrojerkmy";
names(agr)[17]  <- "tbodygyrojerkmz";       names(agr)[18]   <- "tbodyaccmagm";
names(agr)[19]  <- "tgravaccmagm";          names(agr)[20]   <- "tbodyaccjerkmagm";
names(agr)[21]  <- "tbodygyromagm";         names(agr)[22]   <- "tbodygyrojerkmagm";
names(agr)[23]  <- "fbodyaccmx";            names(agr)[24]   <- "fbodyaccmy";
names(agr)[25]  <- "fbodyaccmz";            names(agr)[26]   <- "fbodyaccmfreqx";
names(agr)[27]  <- "fbodyaccmfreqy";        names(agr)[28]   <- "fbodyaccmfreqz";
names(agr)[29]  <- "fbodyaccjerkmx";        names(agr)[30]   <- "fbodyaccjerkmy";
names(agr)[31]  <- "fbodyaccjerkmz";        names(agr)[32]   <- "fbodyaccjerkmfreqx";
names(agr)[33]  <- "fbodyaccjerkmfreqy";    names(agr)[34]   <- "fbodyaccjerkmfreqz";
names(agr)[35]  <- "fbodygyromx";           names(agr)[36]   <- "fbodygyromy";
names(agr)[37]  <- "fbodygyromz";           names(agr)[38]   <- "fbodygyromfreqx";
names(agr)[39]  <- "fbodygyromfreqy";       names(agr)[40]   <- "fbodygyromfreqz";
names(agr)[41]  <- "fbodyaccmagm";          names(agr)[42]   <- "fbodyaccmagmfreq";
names(agr)[43]  <- "fbodyaccjerkmagm";      names(agr)[44]   <- "fbodyaccjerkmagmfreq";
names(agr)[45]  <- "fbodygyromagm";         names(agr)[46]   <- "fbodygyromagmfreq";
names(agr)[47]  <- "fbodygyrojerkmagm";     names(agr)[48]   <- "fbodygyrojerkmagmfreq";
names(agr)[49]  <- "angletbodaccmgrav";     names(agr)[50]   <- "angletbodyaccjerkmgravm";
names(agr)[51]  <- "angletbodygyromgravm";  names(agr)[52]   <- "angletbodygyrojerkmgravm";
names(agr)[53]  <- "anglexgravm";           names(agr)[54]   <- "angleygravm";
names(agr)[55]  <- "anglezgravm";           names(agr)[56]   <- "tbodyaccsx";
names(agr)[57]  <- "tbodyaccsy";            names(agr)[58]   <- "tbodyaccsz";
names(agr)[59]  <- "tgravaccsx";            names(agr)[60]   <- "tgravaccsy";
names(agr)[61]  <- "tgravaccsz";            names(agr)[62]   <- "tbodyaccjerksx";
names(agr)[63]  <- "tbodyaccjerksy";        names(agr)[64]   <- "tbodyaccjerksz";
names(agr)[65]  <- "tbodygyrosx";           names(agr)[66]   <- "tbodygyrosy";
names(agr)[67]  <- "tbodygyrosz";           names(agr)[68]   <- "tbodygyrojerksx";
names(agr)[69]  <- "tbodygyrojerksy";       names(agr)[70]   <- "tbodygyrojerksz";
names(agr)[71]  <- "tbodyaccmags";          names(agr)[72]   <- "tgravaccmags";
names(agr)[73]  <- "tbodyaccjerkmags";      names(agr)[74]   <- "tbodygyromags";
names(agr)[75]  <- "tbodygyrojerkmags";     names(agr)[76]   <- "fbodyaccsx";
names(agr)[77]  <- "fbodyaccsy";            names(agr)[78]   <- "fbodyaccsz";
names(agr)[79]  <- "fbodyaccjerksx";        names(agr)[80]   <- "fbodyaccjerksy";
names(agr)[81]  <- "fbodyaccjerksz";        names(agr)[82]   <- "fbodygyrosx";
names(agr)[83]  <- "fbodygyrosy";           names(agr)[84]   <- "fbodygyrosz";
names(agr)[85]  <- "fbodyaccmags";          names(agr)[86]   <- "fbodyaccjerkmags";
names(agr)[87]  <- "fobdygyromags";         names(agr)[88]   <- "fbodygyrojerkmags";

#Save the data frame as a CSV file.
write.table(agr,"aggregated.csv",
  sep = ",", quote = T, row.names = F, col.names = T)