
library(randomForest)
library(quanteda)
library(dplyr)

# Load the trained model
# Ensure this path is correct for your environment
model <- readRDS("path/to/your/saved_model.rds")

# Function to predict incivility in new text
predict_incivility <- function(new_text, model) {
  
  # Preprocess the new text (same as during model training)
  new_text <- tolower(new_text)
  new_text <- gsub("[[:punct:]]", "", new_text)
  new_text <- gsub("[[:digit:]]", "", new_text)
  new_text <- gsub("\s+", " ", new_text)
  new_text <- trimws(new_text)
  new_text <- removeWords(new_text, stopwords("en"))
  
  # Transform the text into the format used for modeling
  # This part depends heavily on how your model was trained
  # (e.g., if you used a term-document matrix, text embeddings, etc.)
  
  # The following is a placeholder and needs to be adjusted:
  prepared_text <- ...  # Prepare your text input to fit the model's expected input
  
  # Predict using the model
  result <- predict(model, new_text)  # This line may vary depending on your exact model and library
  
  return(result)
}

# Example usage:
new_text_example <- "Your example text here"
prediction <- predict_incivility(new_text_example, model)
print(prediction)
