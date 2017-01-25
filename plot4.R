#plot4

png('plot4.png', width=480, height=480)
par(mfrow=c(2,2))
plot(house_truncated_data$Global_active_power ~ house_truncated_data$DateTime, type="l")
plot(house_truncated_data$Voltage ~ house_truncated_data$DateTime, type="l")

with(house_truncated_data, {plot(Sub_metering_1 ~ DateTime, type="l")})
lines(house_truncated_data$Sub_metering_2 ~ house_truncated_data$DateTime, col = 'Red')
lines(house_truncated_data$Sub_metering_3 ~ house_truncated_data$DateTime, col = 'Blue')

plot(house_truncated_data$Global_reactive_power ~ house_truncated_data$DateTime, type="l")
dev.off()