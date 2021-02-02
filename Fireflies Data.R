
# Firefly Data -----------------------------------------------------------

library(tidyverse)


# Read Data -----------------------------------------------------------------

firefly_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")
firefly_data # Confirming data was correct


# First Plot --------------------------------------------------------------

ggplot(data = firefly_data) # made blank graph
ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass))


# Final Plot ----------------------------------------------------------

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.02) +
labs(x = "SpermatophoreMass", y = "count (number of males)")




