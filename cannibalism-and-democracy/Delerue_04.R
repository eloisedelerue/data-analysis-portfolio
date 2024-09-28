# Charging libraries
# Note: the packages must have been installed before the execution of the script
library(lme4)
library(ggplot2)
library(MuMIn)

# Reading CSV file specifying its path
# Note: please insert path to the CSV file in the next line
df <- read.csv("insert path to cannibalism.csv")

# Ajusting a logistic mixed effects regression model
model <- glmer(cannibalism ~ democracy + year + (1 | country), data = df, family = binomial)

# Printing a summary of the model
summary(model)

# Printing the R-squared of the model
r.squaredGLMM(model)