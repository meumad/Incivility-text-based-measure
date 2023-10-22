
library(dplyr)
library(readr)

# Load the data, ensure this path is correct for your environment
data <- read.csv("path/to/your/results_data.csv", stringsAsFactors = FALSE)

# Assuming 'label' contains the prediction result and 'category' is the criterion you're aggregating by
# This is a placeholder structure, your actual data frame structure may require adjustments

# Aggregate data by category with mean calculation
aggregated_results <- data %>%
  group_by(category) %>%
  summarise(
    mean_incivility = mean(label, na.rm = TRUE),
    count = n()
  )

# Sort results by the highest mean incivility
aggregated_results <- aggregated_results %>%
  arrange(desc(mean_incivility))

# Print the aggregated results
print(aggregated_results)

# Save the aggregated results back to CSV if needed
write.csv(aggregated_results, "path/to/your/aggregated_results.csv", row.names = FALSE)
