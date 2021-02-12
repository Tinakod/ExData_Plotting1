dataf <- "household_power_consumption.txt"
data <- read.table(dataf, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
x <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
dtm <- strptime(paste(x$Date, x$Time, sep = " "),"%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(x$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(dtm, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()