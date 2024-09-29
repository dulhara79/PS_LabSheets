getwd()
setwd("C:\\Users\\it22085726\\Desktop\\lab 05")
getwd()

data <- read.table("Data.txt", sep = ",", header = TRUE)
data
fix(data)

names(data) <- c("x1", "x2")
fix(data)
attach(data)
 
hist(x2, main =" Histogram for no of shareholders", ylab = "frquency", xlab = "x2")
abline(h=0)

hist(x2, main =" Histogram for no of shareholders", ylab = "frquency", xlab = "x2",
     breaks = seq(130,270, length = 8), right = FALSE)
abline(h=0)

histogram <- hist(x2, main =" Histogram for no of shareholders", ylab = "frquency", xlab = "x2",
     breaks = seq(130,270, length = 8), right = FALSE)
abline(h=0)

breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids<-histogram$mids
mids

classes <- c()

for(i in 1:length(breaks)-1) {
  classes[i]<-paste("{", breaks[i], ",", breaks[i+1], "}")
}

cbind(classes=classes, frequency=freq)
 
line(histogram$mids, freq)

plot(mids, freq,type="l", main = "freq polygon for no of shareholders", 
     ylab = "frequency", xlab ="share holder", ylim = c(0, max(freq)))

plot(mids, freq,type="o", main = "freq polygon for no of shareholders", 
     ylab = "frequency", xlab ="share holder", ylim = c(0, max(freq)))

plot(mids, freq,type="p", main = "freq polygon for no of shareholders", 
     ylab = "frequency", xlab ="share holder", ylim = c(0, max(freq)))

cum.freq <- cumsum(freq)
cum.freq

new<-c()
for(i in 1 : length(breaks)) {
  if(i==1) {
    new[i] =0
  } else {
    new[i]=cum.freq[i-1]
  }
}

plot(breaks, new,type="o", main = "freq polygon for no of shareholders", 
     ylab = "frequency", xlab ="share holder", ylim = c(0,max(cum.freq)))
cbind(upper=breaks, cumfreq = new) #cumfreq polygon start 0

sum(freq)*0.75
abline(h=sum(freq)*0.75,v=207)
