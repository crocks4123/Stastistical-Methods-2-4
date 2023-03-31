# C223 Chirag Devgade Linear Regression
# Load the iris dataset
data(iris)

# Create a linear regression model to predict petal length based on sepal length
model <- lm(Petal.Length ~ Sepal.Length, data = iris)

# Print the model summary
summary(model)

# Plot the relationship between petal length and sepal length with the regression line
plot(Petal.Length ~ Sepal.Length, data = iris, main = "Relationship between Petal Length and Sepal Length",
     xlab = "Sepal Length", ylab = "Petal Length")
abline(model, col = "red")

