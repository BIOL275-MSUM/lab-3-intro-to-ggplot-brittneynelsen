
# Firefly Data -----------------------------------------------------------

library(tidyverse)


# Read Data -----------------------------------------------------------------

firefly_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv")
firefly_data # Confirming data was correct


# Graph -------------------------------------------------------------------

ggplot(data = firefly_data) 

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass)) 
ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.02) 
ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.02,
                 boundary = 0, closed = "left") 

# Making graph look good --------------------------------------------------

ggplot(data = firelfy_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.02,
                 boundary = 0, closed = "left")

ggplot(data = firefly_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = 0.02,
                 fill = "#C5351B", color = "black") +
  labs(x = "Mass of Spermatophore (mg)", y = "Frequency (number of males)") +
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )







