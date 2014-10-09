data <- load_data("../household_power_consumption.txt")
datetime <- strptime(paste(as.character(data$Date), data$Time), format = "%Y-%m-%d %H:%M:%S")

plot(datetime, as.numeric(data$Sub_metering_1), xlab="", ylab="Energy sub metering", type="n")
lines(datetime, data$Sub_metering_1, col="black")
lines(datetime, data$Sub_metering_2, col="red")
lines(datetime, data$Sub_metering_3, col="blue")

legend("topright", lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), y.intersp=0.5)

dev.copy(png, file = "plot3.png")
dev.off()
