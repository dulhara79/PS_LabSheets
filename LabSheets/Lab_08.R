getwd()
setwd("C:\\Users\\dulha\\Downloads\\Academic\\Sliit\\2Y_2S\\2.PS\\Labs\\Lab-08")
getwd()

nicotine <- read.table("Data - Lab 8.txt", header = TRUE)
fix(nicotine)

nicotine
nicotine <- nicotine[[1]]
nicotine

#Q1
mean(nicotine)
var(nicotine)
sd(nicotine)
quantile(nicotine)

#Q2
s <- sample(nicotine, 5)
s

samples <- c()
n <- c()

for(i in 1 : 30) {
  s <- sample(nicotine, 5)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) <- n
samples

s.means <- colMeans(samples)
s.means

s.vars <- apply(samples, 2, var)
s.vars


#Q3
mean(s.means)
var(s.means)

#Q4
mean(nicotine)
mean(s.means)

#Q5
var(nicotine)
var(s.vars)




