#Lab 4: Practing for Loops and combining them with data collection via array indexing 
#Creating a for loop that prints "hi" 10 times
for ( i in seq(1,10)) {print("hi")}
#Tim math problem; calculating his total amount of money for the next 8 weeks
TenDollars <- 10
FiveDollars <- 5
OneWeekOfGum <- 2.68
for (i in seq(1,8)) {now <- TenDollars + FiveDollars - OneWeekOfGum
print (now) 
TenDollars <- now}
#Conservation Biologist problem; calculating the expected population size for the next 7 years
FivePercent <- 0.05
CurrentPopulation <- 2000
for (i in seq(1,7)) {new <-abs(CurrentPopulation * FivePercent - CurrentPopulation)
print (new)
CurrentPopulation <- new}
#Discrete-time logistic growth equation used to measure population abundance over time 
n <- 2500
K <- 10000
r <- 0.8 
t <- 1
for (t in seq(2, 12)) {
  n[t] <- n[t-1] + (r * n[t-1] * (K - n[t-1]) / K)
  print (n[t])
  }
#Part 2 basics of array indexing; generating a vector of 18 zeros 
data <- rep(0,18)
print(data)
#For loop that generates a vector where each value goes up by a factor of 3
a <- 1:18
b <- 1:18
c <- 1:18
res <- numeric(length=length(a))
for(i in seq_along(a)) {
  res[i] <- a[i] + b[i] + c[i]
}
res
#New vectors of 0 with the first entry of the vector as 1 
  vec <- c(rep(1,1), rep(0, 17))
  vec
#For loop that creates a vector where each value is equal to one plus twice the value of the previos entery 
zero <- 0
one <- 1
two <- 2
for(i in seq(1,18)) {start <- zero * two + one
print(start)
zero<- start }
#Vector that contains the first 20 Fibonacci numbers
Fibonacci <- numeric(20)
Fibonacci[2] <-1
for (i in 3:20) Fibonacci[i] <- Fibonacci [i-2] + Fibonacci [i-1]
print("First 20 Fibonacci Numbers")
print(Fibonacci)
#Creating 2 vectors to plot a graph to show time vs abundance 
n <- 2500
K <- 10000
r <- 0.8 
time <- c(1:12)
for (t in seq(2, 12)) {
  n[t] <- n[t-1] + (r * n[t-1] * (K - n[t-1]) / K)
  print (n[t])
}
plot(time,n)
