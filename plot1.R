mydata = read.table("C:/Users/Ishita Mandal/Desktop/Plots/household_power_consumption.txt",sep=";",header=T)

data=write.csv(mydata,"C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv")

data=read.csv("C:/Users/Ishita Mandal/Desktop/Plots/dataset_power.csv",header=T)

data2=data[66638:69517,]

##plot1
png("plot1.png", width = 480, height = 480)
hist(as.numeric(data2$Global_active_power),col='red',main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()
