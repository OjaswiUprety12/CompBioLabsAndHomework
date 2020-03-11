#Lab 08 Documentation and Metadata 

#Implementing the discrete-time logistic growth model made in Lab_4
Abundance <- 2500
K <- 10000
r <- 0.8 
time <- c(1:12)
for (t in seq(2, 12)) {
  Abundance[t] <- Abundance[t-1] + (r * Abundance[t-1] * (K - Abundance[t-1]) / K)
  print (Abundance[t])
}
plot(time,Abundance)

#Turn this code into a function that takes r, K, the total number of generations, and the initial population size as its arguments.
TimeLogisticGrowthModel <- function(r,K,Abundance,NumberOfGen) {
  time <- c(1:NumberOfGen)
  for (t in seq(2, NumberOfGen)) {
    Abundance[t] <- Abundance[t-1] + (r * Abundance[t-1] * (K - Abundance[t-1]) / K)
    print (Abundance[t])
  }
}

#Testing this function with new values 
TimeLogisticGrowthModel(0.9,3000,400,10)

#Add code to this function so it produces a plot of the data it generates. 
Abundance <- rep(Abundance,NumberOfGen)
TimeLogisticGrowthModel <- function(r,K,Abundance,NumberOfGen) {
  time <- c(1:NumberOfGen)
  for (t in seq(2, NumberOfGen)) {
    Abundance[t] <- Abundance[t-1] + (r * Abundance[t-1] * (K - Abundance[t-1]) / K)
    print (Abundance[t])
  }
  
  plot(time,Abundance)
}

#Call this function 
TimeLogisticGrowthModel(0.7,4000,12,13)

#Write code that writes the data set to a file
Abundance <- rep(n,NumberOfGen)
TimeLogisticGrowthModel <- function(r,K,Abundance,NumberOfGen) {
  time <- c(1:NumberOfGen)
  for (t in seq(2, NumberOfGen)) {
    Abundance[t] <- Abundance[t-1] + (r * Abundance[t-1] * (K - Abundance[t-1]) / K)
    print (Abundance[t])
  }
  return(cbind(time,Abundance))
  plot(time,Abundance)
}

#Store results as a vector and write it into a csv file that will go in the Lab_8 directory 
GenerationAndAbundance <- TimeLogisticGrowthModel(0.8,5000,15,20)
write.csv(x=GenerationAndAbundance, file="GenerationAndAbundance.csv")

