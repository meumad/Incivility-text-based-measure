
library(randomForest)
library(quanteda)
library(ranger)
library(dplyr)

# Load the preprocessed data
# Ensure this path is correct for your environment
data <- read.csv("path/to/your/clean_data.csv", stringsAsFactors = FALSE)

# Preparing the data for training
data$text <- as.factor(data$text)  # if your text column is named differently, adjust here

# Set seed for reproducibility
set.seed(123)

# Split data into training and test sets
train_index <- sample(seq_len(nrow(data)), size = floor(0.8 * nrow(data)))
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Feature engineering and preparation for random forest can go here

# Specify the number of trees
ntrees <- 100

# Training the model
model <- randomForest(
  as.factor(label) ~ .,  # Adjust based on how your data and labels are structured
  data = train_data,
  ntree = ntrees
)

# Saving the model for later use
saveRDS(model, "path/to/save/your_model.rds")

# Optional: You can add the code for model evaluation using test_data here
