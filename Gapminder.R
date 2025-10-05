library (ggplot2)
library(dplyr)
library(scales)
library(gapminder)

View(gapminder)
str(gapminder)
summary(gapminder)

## For plotting 1d bar
ggplot (gapminder , aes(x=continent)) + geom_bar()  

ggplot (gapminder , aes(x= continent , fill = continent)) + geom_bar(aes(y=..count../12)) + labs(y="Number of countries") + guides(fill=FALSE)

mybar <- last_plot()


### Animated plot 
library(plotly)
library(gapminder)
library(dplyr)

# Load the data
data("gapminder")

# Animated plotly scatter
# install packages if needed
# install.packages(c("plotly", "gapminder", "dplyr"))

library(plotly)
library(gapminder)
library(dplyr)

# load the dataset
data("gapminder")

## Gapminder plot 

#

#

# create animated plot
fig <- plot_ly(
  data = gapminder,
  x = ~gdpPercap,
  y = ~lifeExp,
  size = ~pop,
  color = ~continent,
  frame = ~year,       # animation frame
  text = ~country,
  hoverinfo = "text",
  sizes = c(10, 60),
  type = 'scatter',
  mode = 'markers'
) %>%
  layout(
    xaxis = list(title = "GDP per Capita (log scale)", type = "log"),
    yaxis = list(title = "Life Expectancy")
  )

# display the animated chart
fig

