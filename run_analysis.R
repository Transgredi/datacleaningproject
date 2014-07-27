#download and save file

#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#download.file(url,"dataset.zip","curl")
#unzip("dataset")

library(plyr)

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
names(labels) <- c("activid", "activname")

tests         <- read.table(file.testsubject)
testx         <- read.table(file.testx)
testy         <- read.table(file.testy)
names(tests)  <- "subjects"
tests$type    <- "test"
names(testy)  <- c("activid")
names(testx)  <- features$V2

trains        <- read.table(file.trainsubject)
trainx        <- read.table(file.trainx)
trainy        <- read.table(file.trainy)
names(trains) <- "subjects"
trains$type   <- "train"
names(trainy) <- c("activid")
names(trainx) <- features$V2

print("All files read into sets.")

combotrain            <- cbind(trainx, trains)
combotrain            <- cbind(combotrain, trainy)
combotest             <- cbind(testx, tests)
combotest             <- cbind(combotest, testy)
combofinal            <- rbind(combotrain, combotest)
combofinal            <- arrange(join(combofinal, labels), activid)
combofinal$activid    <- as.factor(combofinal$activid)

n <- names(combofinal)
m <- grep("*[Mm]ean*",n)
s <- grep("*std*",n)

combofinal <- combofinal[,c(m,s,562:565)]

agr <- aggregate(combofinal[,1:86],
  list(activname = combofinal$activname, subjects = combofinal$subjects), mean)


# renaming column names to match general convention of tidy data
# and to sound more user friendly
names(agr)[3]   <- "bodyaccmx";   names(agr)[4]   <- "bodyaccmy";
names(agr)[5]   <- "bodyaccmx";   names(agr)[6]   <- "bodyaccmy";
names(agr)[7]   <- "bodyaccmx";   names(agr)[8]   <- "bodyaccmy";
names(agr)[9]   <- "bodyaccmx";  names(agr)[10]   <- "bodyaccmy";
names(agr)[11]  <- "bodyaccmx";  names(agr)[12]   <- "bodyaccmy";
names(agr)[13]  <- "bodyaccmx";  names(agr)[14]   <- "bodyaccmy";
names(agr)[15]  <- "bodyaccmx";  names(agr)[16]   <- "bodyaccmy";
names(agr)[17]  <- "bodyaccmx";  names(agr)[18]   <- "bodyaccmy";
names(agr)[19]  <- "bodyaccmx";  names(agr)[20]   <- "bodyaccmy";
names(agr)[21]  <- "bodyaccmx";  names(agr)[22]   <- "bodyaccmy";
names(agr)[23]  <- "bodyaccmx";  names(agr)[24]   <- "bodyaccmy";
names(agr)[25]  <- "bodyaccmx";  names(agr)[26]   <- "bodyaccmy";
names(agr)[27]  <- "bodyaccmx";  names(agr)[28]   <- "bodyaccmy";
names(agr)[29]  <- "bodyaccmx";  names(agr)[30]   <- "bodyaccmy";
names(agr)[31]  <- "bodyaccmx";  names(agr)[32]   <- "bodyaccmy";
names(agr)[33]  <- "bodyaccmx";  names(agr)[34]   <- "bodyaccmy";
names(agr)[35]  <- "bodyaccmx";  names(agr)[36]   <- "bodyaccmy";
names(agr)[37]  <- "bodyaccmx";  names(agr)[38]   <- "bodyaccmy";
names(agr)[39]  <- "bodyaccmx";  names(agr)[40]   <- "bodyaccmy";
names(agr)[41]  <- "bodyaccmx";  names(agr)[42]   <- "bodyaccmy";
names(agr)[43]  <- "bodyaccmx";  names(agr)[44]   <- "bodyaccmy";
names(agr)[45]  <- "bodyaccmx";  names(agr)[46]   <- "bodyaccmy";
names(agr)[47]  <- "bodyaccmx";  names(agr)[48]   <- "bodyaccmy";
names(agr)[49]  <- "bodyaccmx";  names(agr)[50]   <- "bodyaccmy";
names(agr)[51]  <- "bodyaccmx";  names(agr)[52]   <- "bodyaccmy";
names(agr)[53]  <- "bodyaccmx";  names(agr)[54]   <- "bodyaccmy";
names(agr)[55]  <- "bodyaccmx";  names(agr)[56]   <- "bodyaccmy";
names(agr)[57]  <- "bodyaccmx";  names(agr)[58]   <- "bodyaccmy";
names(agr)[59]  <- "bodyaccmx";  names(agr)[60]   <- "bodyaccmy";
names(agr)[61]  <- "bodyaccmx";  names(agr)[62]   <- "bodyaccmy";
names(agr)[63]  <- "bodyaccmx";  names(agr)[64]   <- "bodyaccmy";
names(agr)[65]  <- "bodyaccmx";  names(agr)[66]   <- "bodyaccmy";
names(agr)[67]  <- "bodyaccmx";  names(agr)[68]   <- "bodyaccmy";
names(agr)[69]  <- "bodyaccmx";  names(agr)[70]   <- "bodyaccmy";
names(agr)[71]  <- "bodyaccmx";  names(agr)[72]   <- "bodyaccmy";
names(agr)[73]  <- "bodyaccmx";  names(agr)[74]   <- "bodyaccmy";
names(agr)[75]  <- "bodyaccmx";  names(agr)[76]   <- "bodyaccmy";
names(agr)[77]  <- "bodyaccmx";  names(agr)[78]   <- "bodyaccmy";
names(agr)[79]  <- "bodyaccmx";  names(agr)[80]   <- "bodyaccmy";
names(agr)[81]  <- "bodyaccmx";  names(agr)[82]   <- "bodyaccmy";
names(agr)[83]  <- "bodyaccmx";  names(agr)[84]   <- "bodyaccmy";
names(agr)[85]  <- "bodyaccmx";  names(agr)[86]   <- "bodyaccmy";
names(agr)[87]  <- "bodyaccmx";  names(agr)[88]   <- "bodyaccmy";



write.table(agr,"aggregated.csv",
  sep = ",", quote = T, row.names = F, col.names = T)