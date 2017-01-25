#plot 2
png('plot2.png',width=480, height=480)
plot(house_truncated_data$Global_active_power ~ house_truncated_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
dev.off()

