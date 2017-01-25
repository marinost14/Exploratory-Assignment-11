
#plot 3
png('plot3.png', width=480, height=480)
with(house_truncated_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})

lines(house_truncated_data$Sub_metering_2 ~ house_truncated_data$DateTime, col = 'Red')
lines(house_truncated_data$Sub_metering_3 ~ house_truncated_data$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
