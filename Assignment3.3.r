
#1. Test whether two vectors are exactly equal (element by element).

vec1 = c(rownames(mtcars[1:15,]))
vec1
vec2 = c(rownames(mtcars[11:25,]))
vec2

identical(vec1,vec2, num.eq = TRUE, single.NA = TRUE, attrib.as.set = TRUE, 
          ignore.bytecode = TRUE, ignore.environment=FALSE, 
          ignore.srcref = TRUE)
# returns true/false


############################################################################
#2. Sort the character vector in ascending order and descending order.
vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[11:25,]))
# ascending
sort(vec1,decreasing = FALSE)
# descending
sort(vec1,decreasing = TRUE)
# ascending
sort(vec2,decreasing = FALSE)
# descending
sort(vec2,decreasing = TRUE)

###########################################################################
#3. What is the major difference between str() and paste() show an example.

# Major difference between str and paste function is str() is just a character
#variable that contains one or more characters. whereas paste0 function in
#R simply concatenates the vector with space separator.Paste function in 
#R is used to concatenate Vectors by converting them into character.

str(mtcars$mpg) # structure gives the class of variable, number of values/ elements

paste(mtcars$mpg) # just prints / shows the actual elemnts



###########################################################################
#4. Introduce a separator when concatenating the strings.

paste(rownames(mtcars[1,]), rownames(mtcars[10,]), sep = " ")
paste(rownames(mtcars[1,]), rownames(mtcars[10,]), sep = ",")


