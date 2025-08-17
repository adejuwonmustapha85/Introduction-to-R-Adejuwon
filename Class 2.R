#### Data types (Numerics, factors, Integars, Complex, character(string), logical (boolean)) ###

##1. Numeric##

numeric <- 10.5
numeric_many <- c(10, 11, 12.5, 100)

##2. Integer
integers <- c(1L, 10L)


##3. Complex (It has an Imaginary part represented by i)
complexs <- c(9+3i)

##4. Character/string, use speech marks (" ")
characters <- c("Hello", "World", "in")

### for you to know a data type in R, use the function class()

class(numeric_many)

##5. Logical/boolean this is the True, False ##

as.numeric() ### converting data type to numeric
as.integer() ### ### converting data type to integer

### we use a ? to ask for help in R


#### Simple maths ###
## Addition +
# subtraction -
## division /
## square root sqrt()
## summarise data  summary() ##
## Exponent ^
##multiplication *
##modulus?absolute %%
## integer division %/%

 
1+2
1/3
sqrt(9)
summary(numeric_many)
mean(numeric_many)
 ### boolean ###
a <- 10
b <-  9
c <- 10
a<b
a>b
a==b
a==c


##exponent
2^2
2^10

## modulus 
3 %% 16

3 %/% 16

##multiplication
2*4



#### Data Structures (vectors, lists, matrices, arrays, data frames) ###
##1. Vectors - lists of items/variables that are of same data types
## we use c(), seperate items with 
 

x1 <- c("apple","oranges")
x2 <- c(1, 2, 3, 4, 5)
x3 <- 1:5
x4 <- 1.5:6.5
x5 <- 1.5:6.3
x6 <- seq(1.5, 6.2, by = 0.5)

## to know the length of a vector, we use the function length()
length(x2)
length(x4)
length(x6)


# We use sort to arrange out item alphabetically /numerically
sort(x6)

sort(c(2, 20, 5, 30, 1, 6, 5, 3, 1, 7, 8))
x7 <- c(2, 20, 5, 30, 1, 6, 5, 3, 1, 7, 8)
sort(x7, decreasing = TRUE) #descending order
sort(x7, decreasing = FALSE) #ascending order

#access an item in vector we use []
x6[3]

x8 <- 1:1000


### List - contains different data types and list () is used to create 


x9 <- list("apple", "banana", "kiwi")
print(x9)

x10 <- c("apple", "banana", "kiwi")
x10


### To know the data structure we use class ()
class(x9)

### To KNOW THE LENGTH OF A LIST WE USE length() and to acess an item we use []
length(x9)
x9[2]

## To check if an item is present we use %in%

"apple" %in% x9
"mango" %in% x9


# to add an item(s) in lists we use append()
x10 <- append(x9, "mango", after = 1)
x11 <- append (x9, "mango")


## joining two lists or more
## join x9 and x10

x12 <- c(x9, x10)
x12



### Matrices - two dimensional data that has rows (horizontal) and columns (vertical), we use matrix()
## we specify the rows with nrow and columns with ncol

x13 <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
print(x13)
x14 <- matrix(c(1,2,3,4,5,6))
x14

x15 <- matrix(c("apple", "banana", "cherry", "kiwi", "oranges", "mangoes"), nrow = 3, ncol = 2)
x15


### we can create matrices from vectors, but the vectors have to be of the same length
x16 <- c(1, 2, 3, 4, 5, 6)
x17 <- c("apple", "banana", "cherry", 
         "kiwi", "oranges", "mangoes")

# combining using columns, we use cbind()
x18 <- cbind(x16, x17)

x18

# combining using rows, we use rbind()
x19 <- rbind(x16, x17)
x19


#use ncol
x20 <- matrix (c(x18,x19), ncol = 3)
x20

#check if we have an item in a matrix, we use %in%
"kiwi" %in% x20

## Check number of rows and colums in matrix use dim()

dim(x14)
dim(x13)

#to check the dimension of a matrix we use length()
length(x14)
length(x13)



####DATA FRAME - data is displayed in form of a table 
### it can contain different data types 
## each column should have the same data types
### we use data.frame() to create


x21 <- data.frame(
  fruits = c("apple", "banana", "cherry"), 
  counts = c(1, 2, 3),
  duration = c(40, 50, 60)
)
x21


## do computation in dataframes 
summary(x21)
length(x21)
table(x21$fruits, x21$counts)

#access an item in dataframes, we use $, [], [[]]
x21$fruits
x21$counts
c(x21$fruits, x21$counts)

#accessing the specific column
x21[3]


#accessing items in a specific column
x21[["fruits"]]
x21[["counts"]]


##Factors are used to categorize data e.g demographic (male, female )
## we use factor() to create and as.factor() to convert a data structure

x22 <- factor(c("male", "female"), level = c("male", "female"))
x22

## the number of items in a factor
length (x22)

#access an item in a factor
x22[1]


##############     