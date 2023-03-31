# C223 Chirag Devgade OGIVE
# Create a sample dataset
data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)

# Calculate the cumulative frequency of the data
cumulative_freq <- cumsum(table(data))

# Calculate the cumulative percentage of the data
cumulative_perc <- cumulative_freq / sum(cumulative_freq) * 100

# Plot the ogive curve
plot(c(0, data), c(0, cumulative_perc), type = "s", xlab = "Data", ylab = "Cumulative Percentage")
