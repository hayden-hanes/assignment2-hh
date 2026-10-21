#loading the data in 
penguins <- read.csv("penguins.csv")

#first statistical analysis
summary_stats <- summary(penguins)

#second statistical Analysis
mass_by_species <- aggregate(body_mass_g ~ species, data = penguins, FUN = mean, na.rm = TRUE)

#saving the output now
sink("penguins_output.txt")
print(summary_stats)
print(mass_by_species)
sink()
