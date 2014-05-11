power<-read.table("household_power_consumption.txt")
pwr<-power[Date>="2007-02-01" & date<="2007-02-02"]
hist(power$Global_active_power,main="Global Active Power",xlim=c(0,6),ylim=c(0,1200),breaks=10,col="red",xlab="Global Active Power (Kilowatts)")