getwd()
setwd("C:\\Users\\it22130648\\Desktop\\Lab3")
getwd()

data <- read.csv("DATA 3.csv")
data
fix(data)

names(data)<-c("Age", "Gender", "Accomadation")
fix(data)
data

data$Gender<-factor(data$Gender, c(1,2),c("Male", "Female"))
fix(data)

data$Accomadation<-factor(data$Accomadation, c(1,2,3), c("Stays at Home", "Boarded Students", "Lodging"))
fix(data)

attach(data) #execute 2 times

fix(data)

#Q2
#frequency table
Gender.freq<-table(Gender)
Gender.freq

Accomadation.freq<-table(Accomadation)
Accomadation.freq

pie(Gender.freq, main = "pie chart for gender")
pie(Accomadation.freq, main = "pie chart for accomadation")

smoothScatter(Accomadation.freq)

barplot(Accomadation.freq)

barplot(Accomadation.freq, main = "barchart for accomadation", ylab = "frequency")
abline(h=0) #x axis

barplot.default(Gender.freq,  main = "bar chart for gender", ylab = "frequency")
abline(h=0)

boxplot(Age, main = "Boxlot for age", ylab = "Age", outpch=8)

gender_accom.freq<-table(Gender,Accomadation)
gender_accom.freq

barplot(gender_accom.freq,main = "stack bar chart for gender and accomadetion", legend=row.names(gender_accom.freq))
abline(h=0)

barplot(gender_accom.freq, beside = TRUE, main = "cluster barchart for gender and accomadations", legend=row.names(gender_accom.freq), ylab = "frequency", xlab = "options")
abline(h=0)

boxplot(Age~Gender, main = "boxplot for age and gender", xlab = "Gender", ylab="Age")
boxplot(Age~Accomadation, main = "boxplot for age & accomadations", xlab = "Accomadations", ylab = "Age")

xtabs(Age~Gender+Accomadation)/gender_accom.freq
