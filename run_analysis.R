


if(!file.exists("./data")){dir.create("./data")}
Url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(Url,destfile = "./data/Dataset.zip",method="curl")
unzip(zipfile = "./data/Dataset.zip",exdir = "./data")
features<-read.delim("./data/UCI HAR Dataset/features.txt",header=F)
trainx<-read.table("./data/UCI HAR Dataset/train/x_train.txt",header=F)
trainy<-read.delim("./data/UCI HAR Dataset/train/y_train.txt",header=F)
trainsub<-read.delim("./data/UCI HAR Dataset/train/subject_train.txt",header=F)
testx<-read.table("./data/UCI HAR Dataset/test/x_test.txt",header=F)
testy<-read.delim("./data/UCI HAR Dataset/test/y_test.txt",header=F)
testsub<-read.delim("./data/UCI HAR Dataset/test/subject_test.txt",header=F)
x<-rbind(testx,trainx)
sub<-rbind(testsub,trainsub)
y<-rbind(testy,trainy)
features<-as.array(features[,1])
features<-sub("[0-9][0-9][0-9] |[0-9][0-9] |[0-9] ","",features)
names(x)<-features
names(sub)<-"Subject"
names(y)<-"Activity"
data<-cbind(x,sub,y)

subfeatures<-features[grep("mean\\(\\)|std\\(\\)",features)]
subfeatures<-c(subfeatures,"Subject","Activity")
datasub<-subset(data,select = subfeatures)

labels<-read.delim("./data/UCI HAR Dataset/activity_labels.txt",header=F)
labels<-as.array(labels[,1])
labels<-sub("[0-9] ","",labels)
label<-as.factor(labels)
data$Activity<-factor(data$Activity,1:6,labels)

names(data)<-gsub("^t","time",names(data))
names(data)<-gsub("^f","frequency",names(data))
names(data)<-gsub("Acc","Accelerometer",names(data))
names(data)<-gsub("Gyro","Gyroscopoe",names(data))
names(data)<-gsub("Mag","Magnitude",names(data))
names(data)<-gsub("BodyBody","Body",names(data))

data2<-aggregate(. ~Subject + Activity, data,mean)
data2<-data2[order(data2$Subject,data2$Activity),]

write.table(data2,file="tidydata.txt",row.names = F)
