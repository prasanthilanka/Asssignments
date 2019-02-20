

library(Rcmdr)
library(RcmdrPlugin.IPSUR)
data(RcmdrTestDrive)
RcmdrTestDrive

#a. Calculate the average salary by gender and smoking status.
library(dplyr)
str(RcmdrTestDrive)

Data <- RcmdrTestDrive

AvgSalary <- Data%>%group_by(gender, smoking)%>%
  select(smoking, gender, salary)%>%summarise(mean(salary))
AvgSalary <- as.data.frame(AvgSalary)
AvgSalary$meansalary <- AvgSalary$`mean(salary)`
AvgSalary                              # Data Frame

stripchart(meansalary ~ gender, vertical=TRUE, method="jitter", 
           ylab="meansalary", data=AvgSalary)              # Graph

#b. Which gender has the highest mean salary?

with(RcmdrTestDrive, plotMeans(salary, gender, error.bars="se"))  # Male has highest meansalary

meansalary <- as.data.frame(Data%>%group_by(gender)%>%
                              select(gender,salary)%>%summarise(mean(salary)))

meansalary$meansalary <- meansalary$`mean(salary)`
meansalary
meansalary[which.max(meansalary$meansalary),]    # gives the maximum mean salary row i.e. Male


bp <- barplot(meansalary$meansalary, xlab = names(meansalary),
              ylab = "Mean Salary",
              main = "Mean Salary by Gender",
              col = c("Red", "Blue"),
              legend = meansalary$gender)
text(bp, 0, meansalary$meansalary, cex = 1, pos = 3)

# Male has the highest mean salary

#c. Report the highest mean salary.

meansalary$meansalary <- meansalary$`mean(salary)`
meansalary
meansalary[which.max(meansalary$meansalary),]    # gives the maximum mean salary row i.e. Male

# Highest Mean Salary = 743.391

bp <- barplot(meansalary$meansalary, xlab = names(meansalary),
              ylab = "Mean Salary",
              main = "Mean Salary by Gender",
              col = c("Red", "Blue"),
              legend = meansalary$gender)
text(bp, 0, meansalary$meansalary, cex = 1, pos = 3)

# Highest Mean Salary = 743.391

#d. Compare the spreads for the genders by calculating the standard deviation of salary by gender.
str(Data)
MaleSalary <- Data%>%select(gender, salary)%>%filter(gender == "Male")
FemaleSalary <- Data%>%select(gender, salary)%>%filter(gender == "Female")

par(mfrow = c(1,2))
M <- density(MaleSalary$salary)
plot(M, type="l", main="Male Salary Distribution", col = "Red")

N <- density(FemaleSalary$salary)
plot(N, type = "l", main = "Female Salary Distribution", col = "Blue")  