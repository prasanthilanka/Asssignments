# 1. x <- c('data.science.in.R', 'machine.learning.in.R')
#Perform the below string Operation:
#  . Replace the period character "." within each string with another character i.e. "-" minus sign.

x = c('data.science.in.R','machine.learning.in.R')
x
gsub("[.]","-",x)


 # 2. x <- c('data.science.in.R','machine.learning.in.R')
#Perform the below String Operation:
#  . Append again with "-" minus sign character at the start of the each string and finally concatenate all the
#string within the vector to form a final single string and assigning it the object.


x <-paste(paste0("-", gsub("\\.", "-", c("data.science.in.R", "machine.learning.in.R"))),collapse = "")
x



