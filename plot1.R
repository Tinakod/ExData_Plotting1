dataf <- "household_power_consumption.txt"
data <- read.table(dataf, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
x <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]
y <- as.numeric(x$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(y, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
