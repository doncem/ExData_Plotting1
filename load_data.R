load_data <- function(filename) {
    library(data.table)
    data <- fread(filename, sep = ";", header = TRUE, colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?")
    data$Date <- as.Date(data$Date, format="%d/%m/%Y")
    subsetted <- subset(data, subset = (Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02")))
    subsetted
}
