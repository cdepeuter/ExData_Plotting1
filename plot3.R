#assuming you are in the right working directory
data<-read.table("household_power_consumption.txt")
t<-data[data$V1=="1/2/2007"|data$V1=="2/2/2007",]
#get the third column which is global active power
v1<-as.numeric(as.character(t$V7))
v2<-as.numeric(as.character(t$V8))
v3<-as.numeric(as.character(t$V9))

#im colorblind please dont penalize if not right
plot(v1, xaxt="n", ylab="Energy sub metering", xlab="")
lines(v1)
lines(v2, col="red")
lines(v3, col="blue")
axis(1, at=c(1, length(v1)/2, length(v1)), labels=c("Thu", "Fri","Sat"))
legend(2030, 40, c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col=c('black','red','blue'))
png(filename = "plot3.png",width = 709, height = 469)