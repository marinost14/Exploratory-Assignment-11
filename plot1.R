#load and truncate dataset
house_datasetload <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
house_truncated_data <-rbind(house_datasetload[house_datasetload$Date=="1/2/2007",],house_datasetload[house_datasetload$Date=="2/2/2007",])

#dates
house_truncated_data$Date <- as.Date(house_truncated_data$Date,"%d/%m/%Y")
house_truncated_data<-cbind(house_truncated_data, "DateTime" = as.POSIXct(paste(house_truncated_data$Date, house_truncated_data$Time)))

#create histogram
png('plot1.png',width=480, height=480)
hist(as.numeric(house_truncated_data$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")
dev.off()