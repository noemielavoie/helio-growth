## make excel datasheet into R Dataframe, do you have all packages required?
library(tidyverse)
##readxl is part of tidyverse, but when you load tidyverse after installation it doesnt add readxl by default
library(readxl)
##your data was preloaded in the Rproject directory, so then use read_excel function to retrieve the data
HCO3_pshB2 <- read_excel("2021_03_31_pshB2_HCO3.xlsx")
##Make your first graph for fun
ggplot(data = HCO3_pshB2, aes(x = hours, y = OD, colour = treatment, shape = as.factor(biol_rep_number))) +
  geom_point()
