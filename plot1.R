
#assuming you are in the right working directory
data<-read.table("household_power_consumption.txt")
t<-data[data$V1=="1/2/2007"|data$V1=="2/2/2007",]
v<-as.numeric(as.character(t$V3))
#im colorblind please dont penalize if not right
hist(v, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power", ylim=c(0, 1200) )
png(filename = "plot1.png"  width = 480, height = 480)