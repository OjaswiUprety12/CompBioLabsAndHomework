#Lab 07 Writing Your Own Functions, Part 1 

#Problem 1 
  Half <- 0.5
#Writing a function that calculates the area of a triangle 
 triangleArea <- function(base, height, Half) {
  CalculateArea <- base * height * Half
  return(CalculateArea)
}

#Demonstrate the function works for a triangle that has a base of 10 units and a height of 9 units 
  triangleArea(10, 9, Half)

#Problem 2a. Writing a function that calcualtes and returns absolute values 
  myAbs<- function(value) {
  value <- sqrt(value^2)
 return(value)
 
  }
#Showing the function works 
   myAbs(5)
   myAbs(-2.3)

#Problem 2b. Revise the function so it works on vectors 
VectorPractice <- function(a=1.1, b=2, c=0, d=-4.3, e=9, f=-12 ) {
  result <- c(a, b, c, d, e, f)
  return(result)
}
TestingVector <- VectorPractice()
TestingVector

#Demonstrate the function works on this vector 
myAbs(TestingVector)

#Problem 3 write a function that returns a vector of the first n Fibonacci numbers where n is any integer >=3. 
  FF <- function(n,s) {
    Fibonacci <- numeric(n)
  Fibonacci[2] <-1
  for (i in 3:n) Fibonacci[i] <- Fibonacci [i-2] + Fibonacci [i-1]
  print("First 20 Fibonacci Numbers")
  print(Fibonacci)
}
#Testing out the function 
FF(n=12, 1)

#Problem 4 write a function that takes two numbers as its arguments and returns the square of the difference between them
SquareDifference <- function(num1, num2) {
  CalculateSquareDifference <- ((num1 - num2)^2)
  return(CalculateSquareDifference)
}

#Demonstrate the function works by calling it with 3 and 5
SquareDifference(3,5)

#Call the function where the first argument is the vector c(2, 4, 6) and the second argument is the number 4. 
VectorTest <- function(x=2, y=4, z=6 ) {
  StoringResult <- c(x,y,z)
  return(StoringResult)
}
TestingTheVector <- VectorTest()
TestingTheVector

SquareDifference(TestingTheVector, 4)

#Problem 4b. write a function that calculates the average of a vector of numbers. 
AverageVector <- function(first) {second=sum(first)/length(first);second}

#Demonstrate use of this function by calling it with the vector c(5, 15, 10)
CreateVector <- c(5,15,10)
AverageVector(CreateVector)

#Converting the data frame into a vector 
y <- read.csv("/Users/ojaswiuprety/Desktop/EBIO4420/CompBioLabsAndHomework/Labs/Lab_7/DataForLab07.csv")
MyNewVector <- y$x

#Demonstrate the function by calling it with the data 
AverageVector(MyNewVector)
  
#Problem 4c. write a function that calculates and returns the sum of squares as defined 
SumOfSquares <- function(third) {fourth=sum((third -AverageVector(third))^2);fourth}

#Demonstrate the sum of squares function works by calling it with the data 
SumOfSquares(MyNewVector)

