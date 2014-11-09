mydata = read.table("C:/Users/Ishita Mandal/Desktop/Plots/household_power_consumption.txt",sep=";",header=T)

data=write.csv(mydata,"C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv")

data=read.csv("C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv",header=T)

data2=data[66638:69517,]


##plot3
png("plot3.png", width = 800, height = 600)
plot(as.numeric(data2$Sub_metering_1),  type="l",xaxt="n", xlab=" ",,ylab="Energy sub metering")
lines(as.numeric(data2$Sub_metering_2), type="l", col="red")
lines(as.numeric(data2$Sub_metering_3), type="l", col="blue")
axis(1, at=c(0,1450,2880), labels=c("Thu","Fri","Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2,col=c("black", "red", "blue"))
dev.off()

