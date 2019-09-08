library(pacman)
p_load(pacman, dplyr)

median_per_sq_ft_data <- read.csv(file="./data/prepped/median_per_sq_ft.csv", header=TRUE, sep=",");

print( head(median_per_sq_ft_data, n=4))