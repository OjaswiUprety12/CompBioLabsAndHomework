#Lab 08 Documentation and Metadata 

#Implementing the discrete-time logistic growth model made in Lab_4
n <- 2500
K <- 10000
r <- 0.8 
time <- c(1:12)
for (t in seq(2, 12)) {
  n[t] <- n[t-1] + (r * n[t-1] * (K - n[t-1]) / K)
  print (n[t])
}
plot(time,n)

#Turn this code into a function that takes r, K, the total number of generations, and the initial population size as its arguments.
TimeLogisticGrowthModel <- function(r,K,n,NumberOfGen) {
  time <- c(1:NumberOfGen)
  for (t in seq(2, NumberOfGen)) {
    n[t] <- n[t-1] + (r * n[t-1] * (K - n[t-1]) / K)
    print (n[t])
  }
}
#Testing this function with new values 
TimeLogisticGrowthModel(1,3000,400,10)

#Add code to this function so it produces a plot of the data it generates. 
TimeLogisticGrowthModel <- function(r,K,n,NumberOfGen) {
  n <- rep(n,NumberOfGen)
  time <- c(1:NumberOfGen)
  for (t in seq(2, NumberOfGen)) {
    n[t] <- n[t-1] + (r * n[t-1] * (K - n[t-1]) / K)
    print (n[t])
  }
  plot(time,n)
}

#Call this function 
TimeLogisticGrowthModel(0.7,4000,12,13)

#Write code that writes the data set to a file


#Make a new markdown document explaining the script. 







