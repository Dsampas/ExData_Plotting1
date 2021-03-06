png(file="Plot4.png")
par(mfrow=c(2,2))
plot(powerpaste$POSIX,powerpaste$Global_active_power,type="line",xlab="Global Active Power",ylab="")
plot(powerpaste$POSIX,powerpaste$Voltage,type="line",xlab="datetime",ylab="Voltage")
plot(powerpaste$POSIX,powerpaste$Sub_metering_1,type="line",ylab="Energy sub metering",xlab="")
lines(powerpaste$POSIX,powerpaste$Sub_metering_2,col="red")
> lines(powerpaste$Sub_metering_3,col="blue")
> legend("topright",col=c("black","blue","red"), cex=.95,lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(powerpaste$POSIX,powerpaste$Global_reactive_power,type="line",xlab="datetime")
dev.off()