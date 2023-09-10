#### load required libraries
library(ggplot2)
### Read csv data into R dataframe
injuries_data = read.csv("2021_Injuries.csv")
### list all the field names (Variables in the dataset)
names(injuries_data)

##Logic for Region vs Count of Injuries - pic01
ggplot(injuries_data) + geom_bar(aes(x = Region, fill = factor(CONDITION)), 
                                   position = position_dodge(preserve = 'single'),width = 0.75) + 
  ggtitle("Injuries in San Diego by Regions") + ylab("Count of Injuries") + xlab("Regions of San Diego")

##Logic for Region vs Count of Outcome of Injuries - pic02
ggplot(injuries_data) + geom_bar(aes(x = Region, fill = factor(OUTCOME))) + 
  ggtitle("Injuries in San Diego by Regions") + ylab("Count of Outcome of Injury") + xlab("Regions of San Diego")

## show the plot & save it to file
ggsave("myFigure.png", width = 12, height = 6)
