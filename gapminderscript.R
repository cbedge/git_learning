library(dplyr)

gapminder <- read.csv("data/gapminder-FiveYearData.csv")

mean(gapminder$lifeExp[gapminder$continent=="Asia"])

means_by_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarise(mean_Lifeexp=mean(lifeExp),
            mean_gdp=mean(gdpPercap))

str(means_by_continent)
