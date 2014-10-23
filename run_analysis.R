#extract data from each of the test files
subject_test <- read.table("./test/subject_test.txt")
colnames(subject_test) <- "Subject" #rename the column

X_test <- read.table("./test/X_test.txt")
features <- read.table("./features.txt")
names(X_test) <- features$V2 #rename the column according to features file

y_test <- read.table("./test/y_test.txt")
colnames(y_test) <- "Activity" #rename the column

#cbind the test files into a single dataframe
testdata <- cbind(subject_test, y_test, X_test)

#repeat to extract data from each of the train files
subject_train <- read.table("./train/subject_train.txt")
colnames(subject_train) <- "Subject" #rename the column

X_train <- read.table("./train/X_train.txt")
names(X_train) <- features$V2 #rename the column according to features file

y_train <- read.table("./train/y_train.txt")
colnames(y_train) <- "Activity" #rename the column

#cbind train data into single dataframe   
traindata <- cbind(subject_train, y_train, X_train)

#rbind testdata and traindata
dataset <- rbind(testdata, traindata)

#subset columns that have "std" or "mean" or "Subject" or "Activity"
subdataset <- dataset[,grep("[Mm]ean|std|Subject|Activity", names(dataset))]

#Replace all Activity Codes with the appropriate Activity Labels
Activity_Labels <- read.table("./activity_labels.txt")
subdataset[["Activity"]] <- Activity_Labels[match(subdataset[["Activity"]], Activity_Labels[["V1"]]), "V2"]

#load dplyr if it isn't already loaded
library(dplyr)
groupdata <- group_by(subdataset, Subject, Activity)
summarydata <- summarise_each(groupdata, funs(mean))
