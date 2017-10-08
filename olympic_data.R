#Business Analytics Session 5 Assignment 1
#5. Problem Statement 
#1. Consider only those participants who have all the data points
#Answer: To identify all columns are completely tabulated
library(readr)
olympic_data <- read_csv("G:/Business Analytics_R_Acad glid/Assignments/Session 5 Assignment1/olympic_data.csv")
str(olympic_data)
View(olympic_data)
#Excluding Missing Values from Analysis using complete.cases
olympic_data<- olympic_data[complete.cases(olympic_data),] 
olympic_data
#Excluded five cases as athlet name missing in five rows, now the number of athlets are 8613 in new data set
summary(olympic_data)
#2. Rank the participants in terms : . Swimming . Table Tennis . Shooting . Gymnastics . Total Medal 
#To answer this used subset function as many sport types are available in sports column
swimmingdata<- subset(olympic_data, Sport=="Swimming")
swimmingdata
range(swimmingdata$`Total Medals`)
rank_swimming<-swimmingdata[order(swimmingdata$`Total Medals`, decreasing = TRUE),]
rank_swimming
TTdata<- subset(olympic_data, Sport=="Table Tennis")
TTdata
range(TTdata$`Total Medals`)
rank_TTdata<-TTdata[order(TTdata$`Total Medals`, decreasing = TRUE),]
shootdata<- subset(olympic_data, Sport=="Shooting")
shootdata
range(shootdata$`Total Medals`)
rank_shootdata<-shootdata[order(shootdata$`Total Medals`, decreasing = TRUE),]
rank_shootdata
gymdata<- subset(olympic_data, Sport=="Gymnastics")
gymdata
range(gymdata$`Total Medals`)
rank_gymdata<-gymdata[order(gymdata$`Total Medals`, decreasing = TRUE),]
rank_gymdata
totaldata<- olympic_data
totaldata
rank_totaldata<-totaldata[order(totaldata$`Total Medals`, decreasing = TRUE),]
rank_totaldata
#3. Rank the Categories in terms of Age.(Higher the Age,Higher the Rank) 
highage<-olympic_data[order(olympic_data$Age, decreasing = TRUE),]
highage
#4. Identify Year wise top participants in terms of : . Swimming . Table Tennis . Shooting . Gymnastics . Total Medal
range(olympic_data$Year, na.rm = FALSE)
subset(olympic_data,!duplicated(Year))
subset(swimmingdata,!duplicated(Year))
subset(TTdata,!duplicated(Year))
subset(shootdata,!duplicated(Year))
subset(gymdata,!duplicated(Year))
subset(totaldata,!duplicated(Year))

