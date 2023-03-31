# C223 Chirag Devgade POLY
# Create a sample dataset
data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)

# Calculate the cumulative frequency of the data
cumulative_freq <- cumsum(table(data))

# Calculate the cumulative percentage of the data
cumulative_perc <- cumulative_freq / sum(cumulative_freq) * 100

# Create a dataframe with the data and cumulative percentage
df <- data.frame(data, cumulative_perc)

# Plot the polygon graph
ggplot(df, aes(x = data, y = cumulative_perc, group = 1)) +
  geom_polygon(fill = "blue", alpha = 0.3) +
  geom_line(color = "blue") +
  xlab("Data") +
  ylab("Cumulative Percentage")
