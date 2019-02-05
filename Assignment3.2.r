
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

setequal(vec1, vec2)    # is vec1 equal to vec 2
setequal( union(vec1, vec2),
          c(setdiff(vec1, vec2), intersect(vec1, vec2), setdiff(vec1, vec2)))




