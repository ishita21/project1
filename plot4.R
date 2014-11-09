mydata = read.table("C:/Users/Ishita Mandal/Desktop/Plots/household_power_consumption.txt",sep=";",header=T)

data=write.csv(mydata,"C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv")

data=read.csv("C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv",header=T)

data2=data[66638:69517,]


##plot4
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(as.numeric(data2$Global_active_power),type="l",xaxt="n",yaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1, at=c(0,1450,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,1000,2000,3000), labels=c(0,2,4,6))

plot(as.numeric(data2$Voltage),type="l",xaxt="n",yaxt="n",xlab="datetime",ylab="Voltage")
axis(1, at=c(0,1450,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(1000,1400,1800,2200), labels=c(234,238,242,246))

plot(as.numeric(data2$Sub_metering_1),  type="l",xaxt="n",yaxt="n", xlab=" ",,ylab="Energy sub metering")
lines(as.numeric(data2$Sub_metering_2), type="l", col="red")
lines(as.numeric(data2$Sub_metering_3), type="l", col="blue")
axis(1, at=c(0,1450,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,10,20,30), labels=c(0,10,20,30),cex.axis=0.75)
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1,col=c("black", "red", "blue"),cex=0.5)

plot(as.numeric(data2$Global_reactive_power),type="l",xaxt="n",yaxt="n",xlab="datetime",ylab="Global_reactive_power")
axis(1, at=c(0,1450,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,50,100,150,200,250), labels=c(0.0,0.1,0.2,0.3,0.4,0.5),cex.axis=0.75)
dev.off()

