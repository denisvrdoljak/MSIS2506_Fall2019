
# Numeric

# R has all the functions of a normal calculator
a = 3- 1
a


#  ?<-? operator is  exactly the same as the ?=? operator 
a <- 1 + 1
a


# operators are:
# + (addition)
#- (subtraction)
#/ (division)
#* (multiplication)
# ^ (raise to a power)
a = 1 + 1 
a


# Algebra
b = 1 + 2 / 3 - 2 * 6.5 
b
 
b = 1 * (2 / (1 + 1)) 
b
  
b = 1 * 2 / 1 + 1 
b
  

# Math functions
sqrt(5)
 
sum (5, 6, 7, 8, 9)

sqrt (144)



# Anything contained in quotation marks I called a character string
a = "hello world"
a


# number in quotation mark is considered a character, not an integer 
b = "7"
b


c = "1 + 1"
c

# Date

as.Date("2019-10-8")


mydate = as.Date("2019-10-8")
typeof(mydate)
class(mydate)
mydate

# Converting

a = "5"
a
as.integer (a)


b = 5
as.character (b)


c = "2019-10-8" 
as.Date (c)

# # Vectors

# a vector is a string of numbers
vector1 <- 1:9 
vector1 
  

# the colon operator creates a sequence of numbers from left to the right 
a <- 1.2:9
a
# note that the end number is inclusive, unlike other languages (e.g., Python)

#  specifically selected numbers 
vector3 = 1:9 
vector3 
 

vector2 = c(1, 3, 2, -8.1) 
vector2 
 

# Vector Functions

vec <- 1:10 
vec
 
vec_rev <- rev(vec)                      # Apply rev function to vector
vec_rev                                  # Print reversed example vector
 

# Strings

paste ("a" , "b" , sep = "-")
 

x = 1:15
x
grep (2 , x)
 

# Lists

list_a <- list("Red", "Green", c(21,32,11), TRUE) 
list_a
  

# Create a Matrix

# matrix() function takes the data and the number of rows (nrow) and makes a matrix by filling down each column from the left to the right
matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)
 

m = matrix(1:8, ncol = 3)
m 
# Manipulate a Matrix

m[1, 3] 

m[ 2, ] 


# the result is returned as a mathematical vector

# Change a Matrix
m = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)
m

# To change use operator ?=?
m[ ,2 ] = 1
m
 

# To remove a column use operator ?-?
m[,-2]
 


#  algebra 
m + 2
 


# if statements

test_expression1 = FALSE
test_expression2 = FALSE

if ( test_expression1) {
  print("If conditions is True, this will execute")
} else if ( test_expression2) {
  print("If second condition is True, but first is false, this will execute")
}else {
  print("if both conditions are false, this will execute")
}


# For Loop

for (i in 1:5) {
	print (i)
}

Output:
1
2
3
4
5

# While Loop

i = 0
while (i <= 5){
	print (i)
	i = i + 1}



# While Loop
I = 0
while (i <= 5){
	print (i)
	i = i + 1}


# Functions
square_function <- function (x)
{
# compute the square of x
y = sqrt (x)
return (y)
}

square_function (144)
# ouput: [1] 12

# Environment

ls()
# Output:
# [1] "a"
# [2] "b"
# [3] "x"

rm(b)
ls()
# Output:
# [1] "a"
# [2] "x"


