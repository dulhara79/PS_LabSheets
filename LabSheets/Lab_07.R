getwd()
setwd("C:\\Users\\dulha\\Downloads\\Academic\\Sliit\\2Y_2S\\2.PS\\Labs\\Lab-07")
getwd()

#Q1.1
X ~ Bin(44, 0.92)

#Q1.2
dbinom(40, 44, 0.92) #Asking about the direct number

#Q1.3
pbinom(35, 44, 0.92) #Asking about values about >= or <= (pbinomial -> probability binomial)

#Q1.4
pbinom(37, 44, 0.92)

#Q1.5
pbinom(42, 44, 0.92) - pbinom(39, 44, 0.92) # P( 40 ??? X ??? 42 ) = P( X ??? 42 ) - P( X ??? 39 )

#Q2.1
dpois(6, 4.5)


#Q2.2
ppois(6, lambda = 4.5, lower.tail = FALSE)


#Q3.1
pexp(q = 3, rate = 1/2)


#Q3.2
pexp(q = 4, rate = 1/2, lower.tail = FALSE)

#Q3.3 P(2< X <4)
pexp(q = 4, rate = 1/2) - pexp(q = 2, rate = 1/2)


#Q4.2
pnorm(39.6, 36.8, 0.4) - pnorm(36.4, 36.8, 0.4)

#Q4.3
qnorm(0.012, 36.8, 0.04)


#Q4.4
qnorm(0.99, 36.8, 0.4)
