data <- load_data("../household_power_consumption.txt")

plot(strptime(paste(as.character(data$Date), data$Time), format = "%Y-%m-%d %H:%M:%S"), as.numeric(data$Global_active_power), xlab="", ylab="Global Active Power (kilowatts)", type="l")

dev.copy(png, file = "plot2.png")
dev.off()
