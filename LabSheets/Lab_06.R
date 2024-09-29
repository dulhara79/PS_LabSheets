getwd()
setwd("C:\\Users\\dulha\\Downloads\\Academic\\Sliit\\2Y_2S\\2.PS\\Labs\\Lab-06")
getwd()

# Q1
data1 <- read.table("Forest.txt", header = TRUE, sep = ",")
data1
fix(data1)

attach(data1)

#Q2
str(data1) #Read the summary of the data set

#Q3
min(wind)
max(wind)

#Q4
summary(temp)  # give 5 number summary of a particular variable in the data set

#Q5
boxplot(wind, horizontal = TRUE, outline = TRUE, pch = 16)
  # boxplot(<variable name>, horizontal = TRUE, outline = TRUE, pch = 16)
  # horizontal -> to display box plot horizontal
  # outline -> to display outliers in the given variable
  # pch -> it help to display outliers in different icon varies from 0 to 25


#Q6
# 3

#Q7
#Negative distribution

#Q8
summary(temp )

#Q9
mean(wind)
median(wind)
var(wind)
median(temp)
sd(wind) # standard variation

#Q10
IQR(wind)

#Q11
# two way frequency table for day and variable
freqTable <- table(day, month)
freqTable
# ans 21

#Q12
# average == mean
mean(temp[month == "sep"])

#Q13
count <- table(day[month == "jul"])
count
names(count[count == max(count)])
