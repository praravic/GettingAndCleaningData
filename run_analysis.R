##Load the Libraries
library(data.table)
library(dplyr)

##Download and unzip the files
if (!file.exists("./data")){dir.create("./data")}
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile = "./data/dataset.zip",mode="wb")
unzip(zipfile = "./data/dataset.zip",exdir = "./data")

##Read Training Data
x_train = read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train = read.table("./data/UCI HAR Dataset/train/Y_train.txt")
subject_train = read.table("./data/UCI HAR Dataset/train/subject_train.txt")
##Read Training Data
x_test = read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test = read.table("./data/UCI HAR Dataset/test/Y_test.txt")
subject_test = read.table("./data/UCI HAR Dataset/test/subject_test.txt")
##Read Features & Activity Labels tables
features = read.table("./data/UCI HAR Dataset/features.txt")
activity_labels = read.table("./data/UCI HAR Dataset/activity_labels.txt")

##Give Column Names
colnames(x_test)=features[,2]
colnames(x_train)=features[,2]
colnames(y_test)="ActivityID"
colnames(y_train)="ActivityID"
colnames(features)=c("FeaturedID","Feature")
colnames(activity_labels)=c("ActivityID","Activity")
colnames(subject_test)="SubjectID"
colnames(subject_train)="SubjectID"

##Bind Training & Test data into 1 table
train_dt = cbind(x_train,y_train,subject_train)
test_dt = cbind(x_test,y_test,subject_test)
all_dt = rbind(train_dt,test_dt)

##Add descriptive column for Activity
all_dt = merge(all_dt,activity_labels,by="ActivityID",all.x = TRUE)

##Create a dataset with columns which are mean & standard deviation values
meanstd_dt = all_dt[,grepl(".*mean.*|.*std.*|Activity.*|SubjectID",colnames(all_dt))]

##Remove () from column names
colnames(meanstd_dt)=gsub("\\(\\)","",colnames(meanstd_dt))

##Arrange columns of the tidyset
tidyset = select(meanstd_dt,-(ActivityID))
tidyset=tidyset[,c(81,80,1:79)]

##Group by Activity & Subject and Calculate average for each column
tidyset=group_by(tidyset,Activity,SubjectID)
finalset = summarize_each(tidyset,funs(mean))
##Write into a text file
write.table(finalset,file="TidySet.txt",row.names = FALSE)
