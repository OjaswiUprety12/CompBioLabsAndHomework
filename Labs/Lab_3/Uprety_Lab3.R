#lab step #3 practicing the line that adds comments. Variables are indiciting how many chips and people are at the party
xchips <- 5
ypeople <- 8
#Each guest will eat this much
zaverageofchipseaten <- 0.4
#Each guest + myself 
a <- 1 
#calculate the expected amount of leftover chips 
bcalculation <- (ypeople + a) * (zaverageofchipseaten)
#Ranking of Episodes for Self
Self <- c(7, 9, 8, 1, 2, 3, 4, 6, 5)
#Ranking of Episodes for Penny 
Penny <- c(5, 9, 8, 3, 1, 2, 4, 7, 6)
#Ranking of Episodes for Lenny 
Lenny <- c(6, 5, 4, 9, 8, 7, 3, 2, 1)
#Ranking of Episodes for Stewie 
Stewie <- c(1, 9, 5, 6, 8, 7, 2, 3, 4)
#Accessing the fourth element from Penny 
PennyIV <- Penny[4]
#Acessing the fourth element from Penny 
LennyIV <- Lenny[4]
#Command to show the columns and rows.While the FinalRanking shows all of the data Penny just shows her rankings and PennyIV just shoots out a number from a single ranking 
FinalRanking <- cbind(Self, Penny, Lenny, Stewie)
str(Penny)
str(PennyIV)
#Creating data frames for compairson. We are creating a variable that contains the different vectors for the data frame and then we are showing the contents of that frame with the second command, it turns the matrix into a data frame.  
FinalStarWars <- data.frame(Self, Penny, Lenny, Stewie)
as.data.frame(FinalRanking)
#Shows dimensions, 9 by 4 column 
dim(FinalRanking)
#Double is recognized as the matrix, List is regonized as a more flexible data type
typeof(FinalStarWars)
#Comparing the two sets showing that they spit out the same exact data, true or false output
FinalRanking==FinalStarWars
#Vector of the Episode names as Roman Numerals 
RomanNumerals <- c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX")
row.names(FinalRanking) <- RomanNumerals 
FinalRanking
FinalRanking [3,]
FinalStarWars[,4]
FinalRanking [5,1]
FinalRanking [2,2]
FinalRanking [4:6]
FinalRanking[c(2,5,7),]
FinalRanking[c(4,6),c(2,4)]
#Swap Operation 
LennysValue2 <-FinalRanking[2,3] 
LennysValue5 <-FinalRanking[5,3]
FinalRanking[5,3] <-LennysValue2
FinalRanking[2,3] <-LennysValue5
#Trying a New Swap With a Different Method
FinalRanking[3,2]
FinalRanking["III", "Penny"]
#Swap that only works with data frames 
FinalStarWars$Lenny
FinalStarWars$Lenny[2]
#Final swap with the data frame 
LennyValue2 <-FinalStarWars[2]
LennyValue5 <-FinalStarWars[5]
FinalStarWars[5] <-LennyValue2
FinalStarWars[2] <-LennyValue5
