

# Create a box and whisker plot by class using mtcars dataset.

str(mtcars)
View(mtcars)
library(ggplot2)
library(dplyr)
mtcars1 <- mutate(mtcars, 
                  cyl = as.factor(cyl),
                  disp = as.factor(disp),
                  vs = as.factor(vs),
                  am = as.factor(am),
                  gear = as.factor(gear),
                  carb = as.factor(carb),
                  mpg = mpg, hp = hp, drat = drat, qsec=qsec)
str(mtcars1)

# distribution of mpg for each carb
boxplot(mpg~carb, data = mtcars1, col = heat.colors(5))

# distribution of mpg for each carb per cyl
ggplot(mtcars1, aes(x=carb, y=mpg, fill = cyl))+ geom_boxplot()
