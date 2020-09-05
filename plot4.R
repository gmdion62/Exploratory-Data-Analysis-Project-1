par(mfrow=c(2,2),mar=c(4,4,2,4))
plot(household_power_consumption$DateTime,household_power_consumption$Global_active_power,type = "l", lty = 1, ylab="Global Active Power",xlab="")
plot(household_power_consumption$DateTime,household_power_consumption$Voltage,type = "l", lty = 1, ylab="Voltage",xlab="datetime")
plot(household_power_consumption$DateTime,household_power_consumption$Sub_metering_1,type = "l", lty = 1, ylab="Energy sub metering",xlab="")
lines(household_power_consumption$DateTime,household_power_consumption$Sub_metering_2,col="red")
lines(household_power_consumption$DateTime,household_power_consumption$Sub_metering_3,col="blue")
legend("topright", lty=1, pch = "", col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3" ))
plot(household_power_consumption$DateTime,household_power_consumption$Global_reactive_power,type = "l", lty = 1, ylab="Global_reactive_power",xlab="datetime")
dev.copy(png, file = "plot4.png",width=480,height=480) ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!