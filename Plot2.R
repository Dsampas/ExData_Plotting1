power<-read.table("power.txt",header=T,stringsAsFactors=F,sep=";")
powerpaste$Date_Time<-paste(powerpaste$Date,powerpaste$Time,sep=" ")
powerpaste$POSIX<-as.POSIXlt(powerpaste$Date_Time,format="%d/%m/%Y% %H:%M:%S")
plot(powerpaste$POSIX,powerpaste$Global_active_power,type="line",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
dev.off