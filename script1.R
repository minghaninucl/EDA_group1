library('tidyverse')
library('lubridate')
library('ggplot2')

house1 <- read_csv('CLEAN_House1.csv')
house2 <- read_csv('CLEAN_House2.csv')
house3 <- read_csv('CLEAN_House3.csv')
house4 <- read_csv('CLEAN_House4.csv')
house5 <- read_csv('CLEAN_House5.csv')
house6 <- read_csv('CLEAN_House6.csv')
house7 <- read_csv('CLEAN_House7.csv')
house8 <- read_csv('CLEAN_House8.csv')
house9 <- read_csv('CLEAN_House9.csv')
house10 <- read_csv('CLEAN_Hous10.csv')
house11 <- read_csv('CLEAN_House11.csv')
house12 <- read_csv('CLEAN_House12.csv')
house13 <- read_csv('CLEAN_House13.csv')
house14 <- read_csv('CLEAN_House14.csv')
house15 <- read_csv('CLEAN_House15.csv')
house16 <- read_csv('CLEAN_House16.csv')
house17 <- read_csv('CLEAN_House17.csv')
house18 <- read_csv('CLEAN_House18.csv')
house19 <- read_csv('CLEAN_House19.csv')
house20 <- read_csv('CLEAN_House20.csv')
house21 <- read_csv('CLEAN_House21.csv')

house1$Time %>% ymd_hms(house1$Time)

house1 <- house1 %>% 
  mutate(year = lubridate::year(Time),
         month = lubridate::month(Time),
         day = lubridate::day(Time),
         hour = lubridate::hour(Time))

summary(house1)
house1 <- house1 %>% 
  filter(year==2014)

plot(house1$month,house1$Aggregate, col = 'blue')

house1 %>% 
  ggplot(aes(x = week, y = Aggregate))+
  stat_summary(fun = "mean", geom = 'line')

  