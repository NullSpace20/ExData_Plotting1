File <- "./data/household_power_consumption.txt"
           data <- read.table(File, header=T, sep=";",na.strings = "?")
           newData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
           #View(newData)
           globalActivePower <- as.numeric(newData$Global_active_power)
           png("./data/plot1.png", width=480, height=480)
           par(mfrow=c(1,1),mar = c(3,3, 3, 3))
           hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
           dev.off()
