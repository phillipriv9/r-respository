

### Dataset creation, saving a demo
# Phillip R
# Jan 23 2023
# Base R

###Start of Code

### Create dataset

#set a seed for reproducibility
set.seed(123)

#create a vector of beetle names
beet_names <- c("Ladybug", "StagBeetle", "Firefly Beetle", "DungBeetle", "JewelBeetle")

#Create a vector of beetle lengths
beet_lengths <- runif(20,1,5) # random lengths between 1 and 5

#Create vector of beetle colors
beet_colors <- sample(c("Red", "Black", "Green", "Yellow", "Blue"), 20, replace = TRUE)

#Make a data frame

beetle_df <- data.frame(Name = sample(beet_names, 20, replace = TRUE), Length = beet_lengths, Color =  beet_colors)

# Make a csv read file
write.csv(beetle_df, file = "data/fake_beetle_data.csv")

## Make a chart

length_chart <- barplot(height = beetle_df$Length, names = beetle_df$Name)
