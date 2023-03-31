# C223 Chirag Devgade BOXPLOT
x <- c(25, 28, 29, 29, 30, 34, 35, 35, 37, 38)

# boxplot of the data using function
boxplot(x, main = "Boxplot of Given Data", xlab = 'width x axis', ylab = 'data1')
# using hardcoding
summary(x)
med_main = median(x) # or quantile(x, 0.5)
q1 = quantile(x, 0.25)
q3 = quantile(x, 0.75)
q1
q3
# IQR1 = q3-q1
# IQR1
IQR(x)
ul = 35 + (1.5*6)
ll = 29 - (1.5*6)
x[which(x < ll | x > ul)]
typeof(x)
# boxplot(outliers, main = 'boxplot of outliers')



