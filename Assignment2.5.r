#1. States = rownames(US Arrests)
#Get states names with 'w'.
#Get states names with 'W'.

View(USArrests)
States = rownames(USArrests)
States
a <-grep(pattern= "W", x=States, value=TRUE)
a
#output: [1] "Washington"    "West Virginia" "Wisconsin"     "Wyoming"      

b <-grep(pattern= "w", x=States, value=TRUE)
b
#output: [1] "Delaware"      "Hawaii"        "Iowa"          "New Hampshire" "New Jersey"    "New Mexico"    "New York"     


# 2. Prepare a Histogram of the number of characters in each US state.


hist(nchar(States), main = paste("Number of characters in each US state"))

