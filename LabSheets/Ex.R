#ex1
quadeRoot<-function(a,b,c){
  x1 = (-b+sqrt(b**2-4*a*c))/2*a
  x2 = (-b-sqrt(b**2-4*a*c))/2*a
  print(x1)
  print(x2)
}

quadeRoot(2,20,10)


#ex2
#x=1
x<- c(1,2,3)
x[1]/x**3-1+2*x[3]-x[2-1]

#ex3


#ex4
vec<-c(1:20) 
sum(vec%%3==0)

#ex5
A<-c(1,2,3,4)
B<-c(9,5,3,7)
value<-intersect(A,B)
if(length(value) == 0){
  print("disjoint")
} else {
  print("No disjoint")
}

#ex6
data3 <-c(24, 67, 45, 23)
max<-0
maxIndex<-0

for(i in 1:length(data3)){
  if(max<-data3[i]) {
    maxIndex<-1
  }
}

maxIndex

#ex7
which.max(data3)

#ex8
#A=?
#P=5000
#R=11.5
#n=15
A<-0
moneyOwed<-function(P,R,n){
  for (i in i:n) {
    A-P*((1*(R/100))**i)
    print(A)
  }
}

moneyOwed(5000,11.5,15)
