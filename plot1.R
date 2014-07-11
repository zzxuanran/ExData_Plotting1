## 4. Exploratory Data Analysis
## Project 1 - plot1.R
## 7/10/2014

setwd("/Users/rong/Dropbox/code/GitHub/Coursera/Data Science/Exploratory Data Analysis/lecture//Project1")

source("readData.R")
data<-readData()
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()