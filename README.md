# Incivility-text-based-measure
Unsupervised machine learning tool, trained on 20k+ human-coded entries

## Overview

The codebase includes several operations on text data, such as:

- Reading and preprocessing text data.
- Converting text into a suitable format for analysis.
- Training a Random Forest model for incivility detection.
- Predicting incivility in unseen text data.

## Getting Started

### Prerequisites

You need to have R installed on your system. Additionally, you need several R packages, which you can install using the following commands:

```R
install.packages(c("readr", "tm", "textTinyR", "randomForest", "quanteda", "dplyr", "ranger", "glmnet", "tidyverse", "stringr", "data.table", "readxl", "car", "magrittr", "textclean", "SnowballC", "tidytext", "topicmodels", "textmineR", "reshape2", "wordcloud", "pals", "corpus", "quanteda.dictionaries"))
```

### Data

The scripts utilize several CSV files containing human-coded text data. Unfortunately, we cannot make this data openly available.

### Usage

Each script in the repository is a standalone R script and can be run independently. Here's a breakdown of what each script does:

1. `data_preprocessing.R`: This script contains code for reading CSV files, cleaning and preparing text data by removing duplicates, unnecessary spaces, punctuation, etc.

2. `model_training.R`: This script involves training a Random Forest model with tokenized text data, including tuning the number of trees in the random forest.

3. `incivility_prediction.R`: This script is used for predicting incivility in new, unseen text data. It contains functions that preprocess new data and use the trained model to predict incivility.

4. `data_aggregation.R`: This script contains code for processing individual files, predicting incivility, and aggregating results.

To run any script, you can use the Rscript command followed by the script name in the terminal:

```bash
Rscript data_preprocessing.R
```
### Comparison Incivility - Negative Emotion

`Figure 1 - Correaltions Incivility, Negative Emotion (VADER & LIWC)`: The correlation between Incivility (own measure) and Negative Sentiment is rather positive (VADER) and weakly positive (LIWC) respectively. Data points are scattered, indicating significant variability in the relationship.

### Function Descriptions

- `predict_incivility()`: This function takes in new text data and predicts whether the content is civil or not using the trained Random Forest model.

