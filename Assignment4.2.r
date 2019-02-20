
# 1. Write a program to create barplots for all the categorical columns in mtcars.

mtcars
str(mtcars)
# change the categorical variables to factor
library(dplyr)
mtcars1 <- mutate(mtcars, 
                  cyl = as.factor(cyl),
                  disp = as.factor(disp),
                  vs = as.factor(vs),
                  am = as.factor(am),
                  gear = as.factor(gear),
                  carb = as.factor(carb))
str(mtcars1)

is.fact <- sapply(mtcars1, is.factor)  # checking the categorical variables
mtcars2 <- mtcars1[,is.fact]   # creating dataframe of only factor class of variables

str(mtcars2)                   # check structure
par(mfrow= c(2,3))             # Set plot area

lapply(lapply(mtcars2[,1:5], table), barplot)  # barplots for categorical var

# 2. Create a scatterplot matrix by gear types in mtcars dataset.
str(mtcars)
library(car)
scatterplot.matrix(~mpg+drat+wt+qsec|gear, data=mtcars)

# 3. Write a program to create a plot density by class variable.
par(mfrow = c(1,1))
x <- mtcars$mpg          # assign mpg to a object
h <- hist(x, breaks = 10, col = "red", 
          xlab = "MPG", 
          main = "Density plot of mpg")        # plot histogram of the object
xfit <- seq(min(x), max(x), length = 40)       # create 40 points on x axis
yfit <- dnorm(xfit, mean = mean(x), sd= sd(x)) # normal plot of xfit
yfit <- yfit*diff(h$mids[1:2]*length(x))       # mids of the histogram with changing x
lines(xfit, yfit, col="Blue", lwd = 3)         # line plot for xfit and yfit
