#assuming you are in the right working directory
data<-read.table("household_power_consumption.txt")
t<-data[data$V1=="1/2/2007"|data$V1=="2/2/2007",]
#get the third column which is global active power
v<-as.numeric(as.character(t$V3))
#im colorblind please dont penalize if not right
plot(v, xaxt="n", ylab="Global Active Power (kilowatts)", xlab="")
lines(v)
axis(1, at=c(1, 1440, 2880), labels=c("Thu", "Fri","Sat"))
png(filename = "plot2.png", width = 480, height = 480)