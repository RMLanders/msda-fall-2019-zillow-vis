
days_on_zillow <- read.csv("../msda-fall-2019-zillow-vis/data/prepped/days_on_zillow.csv", 
                           header=TRUE, 
                           sep=",",
                           check.names=FALSE)
head(days_on_zillow)
colnames(days_on_zillow)
ggplot(days_on_zillow, aes(date, median_val)) +
  geom_line()


dt <- readxl::read_excel("../msda-fall-2019-zillow-vis/data/prepped/days_on_zillow.xlsx")
