File <- "./data/household_power_consumption.txt"
           data <- read.table(File, header=T, sep=";",na.strings = "?")
           newData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
    
           datetime <- strptime(paste(newData$Date, newData$Time,sep=" "), "%d/%m/%Y %H:%M:%S") 
           globalActivePower <- as.numeric(newData$Global_active_power)
           png("./data/plot2.png", width=480, height=480)
           plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
           dev.off()
