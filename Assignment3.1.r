
#1. How many vowels are there in the names of USA States?

View(USArrests)
States = rownames(USArrests)
States
b <- gsub("[^aeiouAEIOU]"," ",States)
b
# Output will be only vowels from each State name
c <-nchar(gsub(" ", "",b))
# Vowels are changed into a data frame
data.frame(c)
##########################################################################################################################
#2. Visualize the vowels distribution.

barplot(c, main="Vowel distribution",
        xlab="USA States", ylab = "Vowels", ylim = c(0,10))
