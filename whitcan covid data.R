library(readxl)
library(ggplot2)
library(dplyr)


mydata <- read_excel("whitman_covid_data_august.xlsx")
head(mydata)


# Read in plot
myplot <- ggplot(data = mydata, aes(x=`Date`, y=`New Cases`)) +
  
# Adjust label names
  labs(x="Date",
       y="New Cases", 
       title="Whitman County New Covid Cases",
       subtitle = "Ausust 2020 (Data may be incomplete: see Aug 24)",
       caption="Data from Whitman County Covid Press Releases. Scraped by Jack Weyer: 
       undergrad Stats major, econ minor. 425-686-0696") +
  
# Make it look pretty
  theme_bw() +
  
# Adjust label sizes. hjust 0.5 centers. 0 = far left, 1 = far right
  theme(
    axis.title = element_text(size=20),
    axis.text.x = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    plot.title = element_text(size = 30, hjust = 0.5, face="bold"),
    plot.subtitle = element_text(size=20, hjust = 0.5, face="bold")
  ) +
  
# We want a line not a scatterplot, box plot, etc
  geom_line(color = 'red', size=3) 

myplot


