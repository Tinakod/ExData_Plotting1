dataf <- "household_power_consumption.txt"
data <- read.table(dataf, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
x <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
dtm <- strptime(paste(x$Date, x$Time, sep = " "),"%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(x$Global_active_power)
subMetering1 <- as.numeric(x$Sub_metering_1)
subMetering2 <- as.numeric(x$Sub_metering_2)
subMetering3 <- as.numeric(x$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(dtm, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(dtm, subMetering2, type="l", col="red")
lines(dtm, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
