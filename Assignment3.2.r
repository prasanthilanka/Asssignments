
#1. Obtain the elements of the union between two character vectors.
#vec1 = c(rownames(mtcars[1:15,]))
#vec2 = c(rownames(mtcars[10:32,]))

vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[10:32,]))
a <-union(vec1,vec2)
a

#2. Get those elements that are common to both vectors.
#vec1 = c(rownames(mtcars[1:15,]))
#vec2 = c(rownames(mtcars[10:32,]))

b <-intersect(vec1,vec2)
b

#3. Get the difference of the elements between two character vectors.
#vec1 = c(rownames(mtcars[1:15,]))
#vec2 = c(rownames(mtcars[10:32,]))

setdiff(vec1,vec2)

# 4. Test the quality of two character vectors.
#vec1 = c(rownames(mtcars[1:15,]))
#vec2 = c(rownames(mtcars[11:25,]))

vec1 = c(rownames(mtcars[1:15,]))
vec2 = c(rownames(mtcars[11:25,]))

identical(vec1, vec2, num.eq = TRUE, single.NA = TRUE, attrib.as.set = TRUE,
          ignore.bytecode = TRUE, ignore.environment = FALSE,
          ignore.srcref = TRUE)



