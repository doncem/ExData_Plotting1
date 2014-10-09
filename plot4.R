data <- load_data("../household_power_consumption.txt")
datetime <- strptime(paste(as.character(data$Date), data$Time), format = "%Y-%m-%d %H:%M:%S")

par(mfrow = c(2, 2))

# 1st plot
plot(strptime(paste(as.character(data$Date), data$Time), format = "%Y-%m-%d %H:%M:%S"), as.numeric(data$Global_active_power), xlab="", ylab="Global Active Power (kilowatts)", type="l")
# 2nd plot
plot(datetime, as.numeric(data$Voltage), xlab="datetime", ylab="Voltage", type="l")
# 3rd plot
plot(datetime, as.numeric(data$Sub_metering_1), xlab="", ylab="Energy sub metering", type="n")
lines(datetime, data$Sub_metering_1, col="black")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")

legend("topright", lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.lwd=0, pt.cex=1, cex=0.5, y.intersp=0.3)
# 4th plot
plot(datetime, as.numeric(data$Global_reactive_power), xlab="datetime", ylab="Global_reactive_power", type="l")

dev.copy(png, file = "plot4.png")
dev.off()
