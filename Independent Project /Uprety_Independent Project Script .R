#Ocean Acidification Consequences for Small Spotted CatSharks 

#Install the Appropriate Packages
library(tidyverse)
library(dplyr)

#Set the correct working directory 
setwd("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Independent Project /")

#This graph was created to show how atmospheric CO2 levels have continued to rise since the beginning of the 21st century
#This graph was created using the data from NASA, Vital Signs of the Planet Measyred at Mauna Loa Observatory, Hawaii.
CO2.data <- read.csv(file="CO2 data .csv")
CO2Graph <- ggplot() + geom_line(aes(y=CO2, x=Year),
                              data=CO2.data)
CO2Graph + labs(title= "Relentless Rise of Atmospheric CO2 from 2005-2020", x= "Year", y= "CO2 parts per million", caption= "Data: https://climate.nasa.gov/vital-signs/carbon-dioxide")

#Import First Data Set Analysing Blood Chemistry of the Sharks
Blood.Chemistry.Data <- read.csv(file="Blood Chemistry Data .csv")
NewBloodChemistryData <- select(Blood.Chemistry.Data, 1, 6, 9, 11)

#This graph was created to show the elevated bicarbonate levels in CO2 exposed sharks 
HCO3Graph<- ggplot(data=NewBloodChemistryData, mapping= aes(x=Treatment, y= mM.HCO3.)) +
  geom_boxplot()
HCO3Graph + labs(title="Treatment vs HCO3- Concentration")

#This graph was created to show the elevated Cl- levels   
ClGraph <- ggplot(data=NewBloodChemistryData, mapping=aes(x=Treatment, y=Cl..mmol.L, color=Treatment, size=1)) +
  geom_point()
ClGraph + labs(title="Treatment vs Cl- Concentration")

#This graph was created to show the elevated Na+ levels 
NaGraph<- ggplot(NewBloodChemistryData, aes(x=Treatment, y= Na..mmol.L, fill=Treatment, color=Treatment, size=1)) +
  geom_point()
NaGraph + labs(title="Treatment vs Na+ Concentration ")

#Import Second Data Set Analysing Behavioral Data 
Swimming.Behaviour.Data <- read.csv(file="Swimming Behaviour Data .csv")

#Find the missing data and assign the modified data to a new variable 
Swimming.Behaviour.Data [! complete.cases(Swimming.Behaviour.Data),]
Swimming.Behaviour.Data[-c(134),]
New.Swimming.Behaviour.Data <- Swimming.Behaviour.Data[-c(134),]

#Check that there is a difference in rows 
nrow(Swimming.Behaviour.Data)
nrow(New.Swimming.Behaviour.Data)

#Compare males and females and their total swimming time  
SwimmingBehaviourData <- select(New.Swimming.Behaviour.Data, 1, 2, 6)

#To omit the Unsexed
SexSwimmingBehaviourData <-SwimmingBehaviourData[-c(135:150),] 

#Check that there is a difference in rows 
nrow(SwimmingBehaviourData)
nrow(SexSwimmingBehaviourData)

#This graph was created to show the difference in swimming times between male and female sharks 
SexPlot <- ggplot(data=SexSwimmingBehaviourData, aes(x=Treatment, y=Total.swimming.time, fill=Sex,)) +
  geom_bar(stat="identity", position=position_dodge()) 

SexPlot + labs(title="Treatment vs Total Swimming Time ", 
               x="Treatment", y = "Total Swimming Time (seconds)")+
  scale_fill_manual(values=c('red','black'))+
  theme_classic()

#Calculate the Averages 
MeanOfGenders <- NewGendersSwimmingBehaviourData %>% group_by(Treatment, Sex) %>% summarise(mean(Total.swimming.time))

#Import Third Data Set Analysing the lateralization data 
Lateralization.data <- read.csv(file="Lateralisation Data .csv")

#This graph was created to show the  
ggplot(data = Lateralization.data, mapping = aes(x = Treatment, y = Absolute.lateralization)) + 
  geom_boxplot() +
  ggtitle("Absolute lateralization")










