getwd()
setwd("C:\\Users\\it22130648\\Desktop\\Lab 04")
getwd()

data<-read.table("DATA 4.txt", header = TRUE, sep = "")
data

fix(data)

names(data)<-c("Team", "Attandance", "Salary", "Year")
data
fix(data)

attach(data)

boxplot(Attandance, main = "boxplot for Attandance", outline = TRUE, xlab = "Attandance", ylab = "", horizontal = TRUE)

hist(data$Salary, probability = TRUE)
abline(h=0)
abline(v = mean(data$Salary), col = "red", lwd = 3)
lines(density(data$Salary), col = 'green', lwd = 3)

#b
#mean
mean(Attandance)
#median
median(Attandance)
#standard deviation
sd(Attandance)

#summary
summary(Attandance)
quantile(Attandance)
quantile(Attandance)[2]
quantile(Attandance)[4]

IQR(Attandance)
IQR(Salary)
IQR(Year)

# 3
get.modes <- function(y) {
  counts <- table(y)
  names(counts)[counts==max(counts)]
}
get.modes(Year)

get.outliers <-function(z) {
  q1 <- quantile(z)[2]
  q3 <- quantile(z)[4]
  iqr <- q3-q1
  ub <- q3+1.5*iqr
  lb <- q1-1.5*iqr
  print(paste("upper bound: ", ub))
  print(paste("lower bound: ", lb))
  print(paste("outliers: ", paste(sort(z[z<lb|z>ub]), collapse = " ")))
}

get.outliers(Attandance)
get.outliers(Salary)
get.outliers(Year)
