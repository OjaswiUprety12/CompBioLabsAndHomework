# Discrete-Time Logistic Growth Model Script 

## This model is used to predict the population abundance from generation to generation:

### Abundance [t] = Abundance [t - 1] + ( r * Abundance [t -1] * (K - Abundance [t - 1) / K  )

 • Abundance[t] represents the abundance of the population at time t
 • r represents the intrinsic growth rate of the population 
• K represents the environmental carrying capacity for the population 

# Steps for Developing this Model 

1. A function was created: "TimeLogisticGrowthModel" that contains r, K, Abundance, and NumberOfGen as its arguements. 
2. Code was added to the function so that it produces a plot of the data it generates. A graph of Time vs Abundance should be displayed. 
3. Additional code was added to write the data set into an excel file into the directory of your choice. 

[Visit This Link for More Details!](**github.com/flaxmans/CompBio_on_git/blob/master/Labs/Lab08/Lab08_documentation_and_metadata.md**)


