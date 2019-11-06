# WEEK 5

######## BAR PLOTS

# Bar plots can be created in R using the barplot() funcion, supply a vector or matrix to this function.
max.temp <- c(22, 27, 26, 24, 23, 26, 28)
max.temp
barplot(max.temp)

barplot(max.temp,
        main = "Maximum Temperatures in a Week",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred",
        horiz = TRUE)
# Bar Plot with Additional Arguments
barplot(max.temp,
        main = "Maximum Temperatures in a Week",
        xlab = "Degree Celsius",
        ylab = "Day",
        names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
        col = "darkred",
        horiz = TRUE)

# Plotting Categorical Data
 
age <- c(17,18,18,17,18,19,18,16,18,18)
 
table(age)

barplot(table(age),
        main="Age Count of 10 Students",
        xlab="Age",
        ylab="Count",
        border="red",
        col="blue",
        density=10
)

# Multi Dimensional Tables
# Titanic is built in 4 dimentional table
# Dimentions: 4 dimensions, class, sex, age and survival

Titanic

# margin_table() will bring down number of dimentions by summing up data

margin.table(Titanic,1)  # count according to class
 
margin.table(Titanic,4)  # count according to survival
 
margin.table(Titanic)  # gives total count if index is not provided

# Plot with a matrix

#margin.table(Titanic,2)

titanic.data <- margin.table(Titanic,3:4)
titanic.data

barplot(titanic.data,
        main = "Survival of Each Class",
        xlab = "Class",
        col = c("red","green")
)
legend("topleft",
       c("Not survived","Survived"),
       fill = c("red","green")
)



############# HISTOGRAM

# hist() function takes in a vector of values for which the histogram is plotted.

# simple histogram
str(airquality)

Temperature <- airquality$Temp
hist(Temperature)

# histogram with added parameters
hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="darkmagenta",
     freq=FALSE
)

# Use Histogram return values for labels using text()
 
h <- hist(Temperature,ylim=c(0,40))
text(h$mids,h$counts,labels=h$counts, adj=c(0.5, -0.5))

# Changing Number of Brakes

hist(Temperature, breaks=4, main="With breaks=4")
hist(Temperature, breaks=20, main="With breaks=20")

# Histogram with non uniformed width

hist(Temperature,
     main="Maximum daily temperature at La Guardia Airport",
     xlab="Temperature in degrees Fahrenheit",
     xlim=c(50,100),
     col="chocolate",
     border="brown",
     breaks=c(55,60,70,75,80,100)
)

###### PIE CHARTS
#prepare the vector
expenditure <- c(600,       300,       150,          100,      200)

names (expenditure) <- c("Housing",      "Food",     "Cloths",   "Entertainment",    "Other") 

expenditure

#simple pie
pie(expenditure)

#additional parameters

pie(expenditure,
    labels=as.character(expenditure),
    main="Monthly Expenditure Breakdown",
    col=c("red","orange","yellow","blue","green"),
    border="brown",
    clockwise=TRUE
)


###### BLOCKS BOX

str(airquality)

#plain
boxplot(airquality$Ozone)

#with attitional parameters)
boxplot(airquality$Ozone,
        main = "Mean ozone in parts per billion at Roosevelt Island",
        xlab = "Parts Per Billion",
        ylab = "Ozone",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)

#Multiple block boxes

# prepare the data
ozone <- airquality$Ozone
temp <- airquality$Temp
# gererate normal distribution with same mean and sd
ozone_norm <- rnorm(200,mean=mean(ozone, na.rm=TRUE), sd=sd(ozone, na.rm=TRUE))
temp_norm <- rnorm(200,mean=mean(temp, na.rm=TRUE), sd=sd(temp, na.rm=TRUE))
 
boxplot(ozone, ozone_norm, temp, temp_norm,
        main = "Multiple boxplots for comparision",
        at = c(1,2,4,5),
        names = c("ozone", "normal", "temp", "normal"),
        las = 2,
        col = c("orange","red"),
        border = "brown",
        horizontal = TRUE,
        notch = TRUE
)

# Boxplot form Formula

boxplot(Temp~Month,
        data=airquality,
        main="Different boxplots for each month",
        xlab="Month Number",
        ylab="Degree Fahrenheit",
        col="orange",
        border="brown"
)



############ STRIP CHARTS


str(airquality)
stripchart(airquality$Ozone)


stripchart(airquality$Ozone,
           main="Mean ozone in parts per billion at Roosevelt Island",
           xlab="Parts Per Billion",
           ylab="Ozone",
           method="jitter",
           col="orange",
           pch=1
)


#Multiple strip charts

# prepare the data
temp <- airquality$Temp
# gererate normal distribution with same mean and sd
tempNorm <- rnorm(200,mean=mean(temp, na.rm=TRUE), sd = sd(temp, na.rm=TRUE))
# make a list
x <- list("temp"=temp, "norm"=tempNorm)
x

# main - the title, xlab and ylab- labels for the axes, col-to define colo , method

stripchart(x,
           main="Multiple stripchart for comparision",
           xlab="Degree Fahrenheit",
           ylab="Temperature",
           method="jitter",
           col=c("orange","red"),
           pch=16
)


# Strip Chart from Formula

stripchart(Temp~Month,
           data=airquality,
           main="Different strip chart for each month",
           xlab="Months",
           ylab="Temperature",
           col="brown3",
           group.names=c("May","June","July","August","September"),
           vertical=TRUE,
           pch=16
)




####### PLOT() 

# plot()

# simple plot

x <- seq(-pi,pi,0.1)
plot(x, sin(x))

# adding labels with parameter main

plot(x, sin(x),
     main="The Sine Function",
     ylab="sin(x)")

#Changing color and plot type

plot(x, sin(x),
     main="The Sine Function",
     ylab="sin(x)",
     type="l",
     col="blue")

#Overlying plots

plot(x, sin(x),
     main="Overlaying Graphs",
     ylab="",
     type="l",
     col="blue")
lines(x,cos(x), col="red")
legend("topleft",
       c("sin(x)","cos(x)"),
       fill=c("blue","red")
)

# par() inquire and set parameters

par()

#multiple graphs
#vector of form c(m, n)  divides the given plot into m*n array of subplots. 
# For example, if we need to plot two graphs side by side, we would have m=1 and n=2. 

max.temp

par(mfrow=c(1,2))    # set the plotting area into a 1*2 array
barplot(max.temp, main="Barplot")
pie(max.temp, main="Piechart", radius=1)

## To plot two graphs side by side, we would have m=1 and n=2. 

Temperature <- airquality$Temp
Ozone <- airquality$Ozone
par(mfrow=c(2,2))
hist(Temperature)
boxplot(Temperature, horizontal=TRUE)
hist(Ozone)
boxplot(Ozone, horizontal=TRUE)

#More precise graphs

# make labels and margins smaller
par(cex=0.7, mai=c(0.1,0.1,0.2,0.1))
Temperature <- airquality$Temp
# define area for the histogram
par(fig=c(0.1,0.7,0.3,0.9))
hist(Temperature)
# define area for the boxplot
par(fig=c(0.8,1,0,1), new=TRUE)
boxplot(Temperature)
# define area for the stripchart
par(fig=c(0.1,0.67,0.1,0.25), new=TRUE)
stripchart(Temperature, method="jitter")

# Saving plots  

Temperature <- airquality$Temp
Temperature

# to show on a screen
hist(Temperature, col="darkgreen")

#to save as a jpeg 
jpeg(file="saving_plot1.jpeg")
hist(Temperature, col="darkgreen")
dev.off()

# saving as a png
png(file="saving_plot2.png",
    width=600, height=350)
hist(Temperature, col="gold")
dev.off()


# saving as a bmp

bmp(file="saving_plot3.bmp",
    width=6, height=4, units="in", res=100)
hist(Temperature, col="steelblue")
dev.off()

# saving as a pdf
pdf(file="saving_plot4.pdf")
hist(Temperature, col="violet")
dev.off()

## CHANGE COLOR

# R Plot Color

temp <- c(5,7,6,4,8)
barplot(temp, main="By default")
barplot(temp, col="coral", main="With coloring")

# color names
colours()

# hex values for colors

barplot(temp, col="#c00000", main="#c00000")
barplot(temp, col="#AA4371", main="#AA4371")

# 3D Plot

cone <- function(x, y){
    sqrt(x^2+y^2)
}
x <- y <- seq(-1, 1, length= 20)
z <- outer(x, y, cone)
persp(x, y, z)


########################end##############


