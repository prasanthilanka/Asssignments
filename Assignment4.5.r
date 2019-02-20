
#1. Compute the measures of central tendency for salary and reduction which variable has highest center?

RcmdrTestDrive
str(RcmdrTestDrive)

library(psych)

describe(RcmdrTestDrive$salary)
describe(RcmdrTestDrive$reduction)
# Variable salary has the highest center

#2. Which measure of center is more appropriate for before and after?
describe(RcmdrTestDrive$before)
describe(RcmdrTestDrive$after)

# both the variables 'before' & 'after' are negatively skewed, median is more appropriate measure of center