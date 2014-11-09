mydata = read.table("C:/Users/Ishita Mandal/Desktop/Plots/household_power_consumption.txt",sep=";",header=T)

data=write.csv(mydata,"C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv")

data=read.csv("C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv",header=T)

data2=data[66638:69517,]

##plot2
png("plot2.png", width = 480, height = 480)
plot(as.numeric(data2$Global_active_power),type="l",xaxt="n",yaxt="n",xlab="",ylab="Global Active Power (kilowatts)")
axis(1, at=c(0,1450,2880), labels=c("Thu","Fri","Sat"))
axis(2, at=c(0,1000,2000,3000), labels=c(0,2,4,6))
dev.off()