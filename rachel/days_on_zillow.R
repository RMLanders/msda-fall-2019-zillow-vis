library(ggplot2)
library(dplyr)
library(lubridate)
library(zoo)
library(data.table)

days_on_zillow <- readxl::read_excel("../msda-fall-2019-zillow-vis/data/prepped/days_on_zillow.xlsx")

head(days_on_zillow)








ggplot(days_on_zillow, aes(date, median_val)) +
  geom_line()

#convert date field to date type
days_on_zillow <- days_on_zillow %>% 
  transform(date = as.Date(as.yearmon(date)))

min_days_on_zillow <- days_on_zillow %>% 
  group_by(RegionName) %>% 
  top_n(-1, date)
max_days_on_zillow <- days_on_zillow %>% 
  group_by(RegionName) %>% 
  top_n(1, date)

merge_max_min_days_on_zillow <- merge(max_days_on_zillow, min_days_on_zillow,
                                      by = c("RegionName", "RegionName"))
colnames(merge_max_min_days_on_zillow)[colnames(merge_max_min_days_on_zillow) == "median_val.x"] <- "last_median_val"
colnames(merge_max_min_days_on_zillow)[colnames(merge_max_min_days_on_zillow) == "median_val.y"] <- "first_median_val"
colnames(merge_max_min_days_on_zillow)[colnames(merge_max_min_days_on_zillow) == "date.x"] <- "last_record"
colnames(merge_max_min_days_on_zillow)[colnames(merge_max_min_days_on_zillow) == "date.y"] <- "first_record"
merge_max_min_days_on_zillow$SizeRank.x <- NULL
merge_max_min_days_on_zillow$SizeRank.y <- NULL
merge_max_min_days_on_zillow$weeks_on_zillow = as.double(difftime(merge_max_min_days_on_zillow$last_record, merge_max_min_days_on_zillow$first_record,
                                                        units = "weeks"))
merge_max_min_days_on_zillow$change_in_median_val = merge_max_min_days_on_zillow$last_median_val - merge_max_min_days_on_zillow$first_median_val
head(merge_max_min_days_on_zillow)
tail(merge_max_min_days_on_zillow)

head(max_days_on_zillow <- merge_max_min_days_on_zillow %>% 
  top_n(1, weeks_on_zillow) %>% 
    top_n(1, change_in_median_val))

#filter DFW data
san_jose_ca_days_on_zillow <- days_on_zillow %>% 
  filter(RegionName == 'San Jose, CA') %>% 
  group_by()
head(san_jose_ca_days_on_zillow)

print(with(days_on_zillow, RegionName[date == min(date)]))
print(min(days_on_zillow$date))

days_on_zillow %>% 
  with(RegionName[date == min(date)])

#plot
ggplot(san_jose_ca_days_on_zillow, 
       aes(date, median_val)) +
  geom_point()
