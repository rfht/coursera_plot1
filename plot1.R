# 1. retrieve data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "household_power_consumption.zip")
unzip("household_power_consumption.zip")
data <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", skip = 66637, nrows = (69517 - 66637))

# 2. convert date to proper Date format
data[, 1] <- as.Date(data[, 1], "%d/%m/%Y")

# 3. create histogram
hist(data[, 3], col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

