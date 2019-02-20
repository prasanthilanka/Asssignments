
#1. Histogram for all variables in a dataset mtcars. Write a program to 
#create histograms for all columns.

str(mtcars)
library(ggplot2)
library(tidyr)
mtcars%>% gather()%>%head()
ggplot(gather(mtcars),aes(value))+geom_histogram(bins=10)+ facet_wrap(~key,scales = 'free_x')

# 2. Check the probability distribution of all variables in mtcars

mtcars
par(mfrow = c(3,4))          # set the graph area
# writing a function to plot probability
prob <- function(prob){
  x<- sort(prob)
  hx <- dnorm(prob)
  p <- plot(x,hx,type="l")
}
lapply(mtcars[2:11],prob)   # applying the function to all the columns
       

 #3. Write a program to create boxplot for all variables.


par(mfrow=c(3,4)) 
lapply(mtcars[2:11], boxplot)   # applying the function to all the columns
