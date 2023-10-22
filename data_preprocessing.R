
library(readr)
library(dplyr)
library(stringr)

# Function to clean and preprocess individual text data
clean_text <- function(text) {
  text <- tolower(text)
  text <- gsub("[[:punct:]]", "", text)
  text <- gsub("[[:digit:]]", "", text)
  text <- gsub("\s+", " ", text)
  text <- trimws(text)
  return(text)
}

# Load data
df2 <- read_csv("path/to/your/data1.csv")
df3 <- read_csv("path/to/your/data2.csv")
df4 <- read_csv("path/to/your/data3.csv")

# Data preprocessing steps
df2 <- df2 %>% mutate(text = clean_text(text))
df3 <- df3 %>% mutate(text = clean_text(text))
df4 <- df4 %>% mutate(text = clean_text(text))

# Combine data frames
combined_data <- bind_rows(df2, df3, df4)

# Remove duplicates based on the 'text' column
clean_data <- combined_data %>% distinct(text, .keep_all = TRUE)

# Export the clean data to a new CSV file
write_csv(clean_data, "path/to/your/clean_data.csv")
