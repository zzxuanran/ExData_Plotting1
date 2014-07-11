## 4. Exploratory Data Analysis
## Project 1
## 7/10/2014

# rough memory need: 2,075,259 * 9 * 8 bytes = 149418648 bytes = 142.5MB


dnldfile <- function(fileURL, fname) {
  if(!file.exists(fname)) {
    download.file(fileURL, destfile=fname, method="curl")
  }
  fname
}



readData <- function(){
  if(file.exists("plot.csv")){
    data<-read.csv("plot.csv")
    data$DateTime <- strptime(data$DateTime, "%Y-%m-%d %H:%M:%S")
  }
  else{
    fname <- dnldfile("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip")
    con <- unz(fname, "household_power_consumption.txt")
    data<-read.table(con, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
    data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
    data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
    write.csv(data, "plot.csv")
  }
  data
}
