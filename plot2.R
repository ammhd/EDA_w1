temp <- read.delim("household_power_consumption.txt",sep=";",header=T)
data <- subset(temp,Date=="1/2/2007" | Date == "2/2/2007")
date_time = strptime(paste(data$Date,data$Time),format="%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(date_time,data$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab=NA)
dev.off()

