#1.Read multiple JSON files into a directory to convert into a dataset.
#I have files text1, text2, text3 in the directory JSON.

setwd("Users/Desktop/json")
temp = list.files(pattern="text*.")
myfiles = lapply(temp, read.delim)
# Install package rjson
library("rjson")
json_file <- "myfiles"
# Install package jsonlite
library(jsonlite)
out <- jsonlite::fromJSON(json_file)
out[vapply(out, is.null, logical(1))] <- "none"
data.frame(out, stringsAsFactors = FALSE)[,1:5]
View(out)
########################################################################################
#2. Parse the following JSON into a data frame.
#js<-'{
#"name": null, "release_date_local": null, "title": "3 (2011)",
#"opening_weekend_take": 1234, "year": 2011,
#"release_date_wide": "2011-09-16", "gross": 59954}''

# Reading json file

file=fromJSON (file="js.json")
file

# json file to df 

json_data_frame=as.data.frame(file)
json_data_frame
#######################################################################################

#3. Write a script for Variable Binning using R.

v <- 1:100
tapply (v, cut(v,50))
# eg: cut(100,50)

