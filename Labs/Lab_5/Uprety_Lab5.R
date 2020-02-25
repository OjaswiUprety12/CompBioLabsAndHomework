#Lab 5 Loops and Conditionals 
#Practice simple conditionals; practicing if and else statements 
x <- 4
if (x > 5) {
  print("True")
} else { 
  print("false")
}
#convert the data vector into a dataframe 
y <- read.csv("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_5/ExampleData.csv")
myVec <- y$x
#Using a forloop to check each value in the imported data 
for (i in 1:length(myVec)) {
  if (myVec[i] < 0) { 
   myVec[i] <- NA
  }
}
#Using vectorized code that makes use of "logical" indexing
ISNA <- is.na(myVec)
myVec[ISNA] <- NaN

# Using a which() statement and integer indexing 
ISNA <- is.na(myVec)
myVec[ISNA] <- NaN
myThreshhold <- 0 
myVec[ISNA] <- myThreshhold

#Determining how many of the values fall in the range between 50 and 100 
myVec >= 50 & myVec <= 100

#Creating a new vector of data that fall in the range between 50 and 100 

y <- read.csv("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_5/ExampleData.csv")
FiftyToOneHundred <- y$x
FiftyToOneHundred <- subset(myVec, FiftyToOneHundred >= 50 & FiftyToOneHundred <= 100)

#Save the newly made vector 

write.csv(x= FiftyToOneHundred, file="FiftyToOneHundred.csv")

#Import CSV file for CO2 data 
setwd("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_5/")
CO2Data <- read.csv("CO2_data_cut_paste.csv")

#Wihtout using a loop: Answer "What was the first year for which data on "Gas" emissions were non zero?
FirstYearEmissionsWereNonZero <- (CO2Data$Year[CO2Data$Gas > 0 ][1])

#Answer: During which years were "Total" emissions between 200 and 300 million metric tons of carbon?
 EmissionsBetween200And300Million <- (CO2Data$Year[CO2Data$Total >= 200 & CO2Data$Total <= 300])

#Practicing Loops + Conditionals + Biology; Write a code that calculates the abundances of predators and prey over time according to this model 

totalGenerations <- 1000 
initPrey <- 100 
initPred <- 10 
a <- 0.01 
r <- 0.2
m <- 0.05 
k <- 0.1

#Create a time vector and 2 additional vectors for n over time and to store values of p 
Time <- c(2:totalGenerations)
n <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
p <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])

#Create a loop that implements the calculations 
for(t in seq(1:totalGenerations)) {
  n[t] <- n[t-1] + (r * n[t-1])- (a * n[t-1] * p[t-1])
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])

}
print(n[t])
print(p[t])
#Adding some if statements to check for negative numbers each generation
for(t in seq(1:totalGenerations)) {
if (n[t] < 0) {
  n[t] <- 0
}
}

#Create a plot of the abundances of prey and predators over time 
plot(time,data)
plot(n,p)
Lines(x,y)

#Create a matrix of the results 
myResults <- matrix(nrow- , ncol=)


