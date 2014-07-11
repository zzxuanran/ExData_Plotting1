## 4. Exploratory Data Analysis
## Project 1 - plot2.R
## 7/10/2014

source("readData.R")
data<-readData()
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()