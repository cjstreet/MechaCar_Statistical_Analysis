#Deliverable 1 - Part 1: Linear Regression to Predict MPG

#load dplyr 
library(dplyr)

#read file
MechaCar <- read.csv('resources/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

#Deliverable 2 - Create Visualizations for the Trip Analysis
#load file
Suspension <- read.csv('resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#total summary
total_summary <- Suspension %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )

#lot summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI) , Median=median(PSI), Variance=var(PSI), SD=sd(PSI) , )

#Deliverable 3 - T-tests on Suspension Coils

# Peform t-test on lots
t.test(Suspension$PSI,mu = 1500)
# Lot 1
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Lot 2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Lot 3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)


