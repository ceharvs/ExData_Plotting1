mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")
mydata <- subset(mydata, mydata$Date>="2007-02-01" & mydata$Date<="2007-02-02")
mydata$DateTime = paste(mydata$Date, mydata$time, sep=", ")