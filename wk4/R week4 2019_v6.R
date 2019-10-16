# Data frame is used for storing data tables

n = c(2, -3, 5)
n

b=c(TRUE, FALSE, TRUE)
b

s = c("aa", "bb", "cc")
s

df=data.frame(n, s, b)
df

# Create Data Frame from the List

ll <- list (list(1:3), list(4:6), list(7:9))
df <- as.data.frame(ll)
df

# Retrieving Data

#first row, second column

df[1,2]

#number of rows
nrow(df)

#number of columns
ncol(df)

# Preview top few rows
head(df)

# retrieve the second column vector
df[[2]]

# retrieve the column vector by its name
df[["X1.3"]]

df $X1.3

# Data Frame Column Slice

# slice second column - numeric indexing
df[2]

# slice column by name - indexing by name
df["X1.3"]

#slice two columns

df[c("X1.3","X4.6")]

# Data Frame Row Slice

#numeric indexing
df[3,]
df[c(2,3),]

# name indexing
df["1",]
df[c("2","3"),]




#Reading and Writing Data

getwd()

setwd("/Users/mario/Documents/Santa Clara")

getwd()

# read text file -> mydata

mydata=read.table("indata.txt")
mydata

# read CSV file -> mydata

mydata=read.csv("datafile.csv")  
mydata


#Missing and messy data

# Finding missing values

x1 <- c(1, 4, 3, NA, 7)
x2 <- c("a", "B", NA, "NA")
x1
x2
is.na(x1)
is.na(x2)

!is.na(x2)

# Missing values in dataframe

ff=read.table("fillna.txt")
ff
is.na(ff)

!is.na(ff)

#cleaning missing values

na.omit(ff)

na.exclude(ff)

na.fail(ff)

na.pass(ff)

# replace NA with 0

ff
ff[is.na(ff)] <- 0
ff





###### Broken ############# 

# no library ????????
library(XLConnect)
# load XLConnect package 
wk = loadWorkbook("indata.xls") 
df = readWorksheet(wk, sheet="Sheet1")


# Write 

x <- matrix(1:10, ncol = 5) fil <- tempfile("data") 



