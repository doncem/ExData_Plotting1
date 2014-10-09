data <- load_data("../household_power_consumption.txt")

hist(as.numeric(data$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="#ff2500")

dev.copy(png, file = "plot1.png")
dev.off()
