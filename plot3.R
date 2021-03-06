mydata <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactor=FALSE)
mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")
mydata <- subset(mydata, mydata$Date>="2007-02-01" & mydata$Date<="2007-02-02")
dt <- paste(mydata$Date, mydata$Time, sep=" ")
mydata$DateTime <- as.POSIXlt(dt)
plot(mydata$DateTime, mydata$Sub_metering_1,ylab="Energy Sub Metering", xlab="",type='n')
lines(mydata$DateTime, mydata$Sub_metering_1, col="black")
lines(mydata$DateTime, mydata$Sub_metering_2, col="red")
lines(mydata$DateTime, mydata$Sub_metering_3, col="blue")
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png")
dev.off()