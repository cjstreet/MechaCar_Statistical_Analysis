# MechaCar_Statistical_Analysis
Using R, design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. This project will allow AutosRUs’ upper management to review the production data for insights that may help the manufacturing team.


## Resources
- Data Source: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: RStudio, R, dplyr


## Linear Regression to Predict MPG



 <img src="https://github.com/cjstreet/MechaCar_Statistical_Analysis/blob/main/resources/linear_reg.png" width="600" height="400">



- The variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset are vehicle weight, spoiler angle, and AWD. This variables all had a Pr(>|t|) value greater than 0.05. Both ground clearance and vehicle length had a Pr(>|t|) less than 0.05, this means they provide to the random amount of variance.
- The P value of 0.00000000005 is very close to zero due to the small p-value.
- The r-squared value of the linear model correctly predicts mpg of MechaCar prototypes 71% of the time.

## Summary Statistics on Suspension Coils

### **Total Summary:**
![](resources/total_sum.png)

### **Lot Summary:**
![](resources/individ_lot_sum.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The overall manufactering lots has a variance of 62 psi, which is below the limit of 100 psi. This is an average of all the lots.
Lot 1 and Lot 2 are both within design specifications and have nearly the same mean and median. They also have a low variance which far below the limit. However, Lot 3 shows the most variance with 170 psi and this exceeds the manufacturers specs.

## T-Tests on Suspension Coils

### **Summary T-test:**
 <img src="https://github.com/cjstreet/MechaCar_Statistical_Analysis/blob/main/resources/all_lots_t_test.png" width="700" height="400">
 
### **Individual T-tests:**
 <img src="https://github.com/cjstreet/MechaCar_Statistical_Analysis/blob/main/resources/individ_lots_t_test.png" width="700" height="900">
 
In summary, Lot 1 (p-value of 1), Lot 2 (p-value of 0.6), and Lot 3 (p-value of 0.04) all had different p-values. Lot 1 and 2 the p-values are not different from the population mean. However, Lot 3 has a p-value of 0.04 which means there is evidence that the suspension coil is different from the population mean. 


## Study Design: MechaCar vs Competition.

Comparing safety rating performance of the MechaCar vehicles against performance of vehicles from other manufacturers.
Safety ratings is one of the top reasons people purchase a specific car. Cars must pass all metrics to receive a 5-star rating saftey rating.

Key Metrics:
Automatic emergency braking system - Advanced or Superior - dependent variable
Standard-equipment headlights- Good or Acceptable - dependent variable
Front and Side impact results - dependent variable
Likelihood of rollover in collison - dependent variable
Safety Star Rating - dependent variable

Competition Results - independent variable

Null Hypothesis (Ho): Based on the key safety metrics MechaCar's safety rating is comparable to the competition
Alternative Hypothesis (Ha): Based on the key safety metrics, the MechaCar's safety rating is not comparable to the competition.

The chi-squared statistical test will be used due to the number and categorical variables. The chi-squared tests give the difference in categorical
frequencies between groups. In addition, the two-sample t-test will be used for the continuous variables. This test will give the statistical difference between the distribution means from two samples.

All of the data below from MechaCar and each of the different types of competitors cars will need to be collected.

- Automatic emergency braking system - Advanced or Superior - categorical variable
- Standard-equipment headlights- Good or Acceptable - categorical variable
- Front and Side impact results - continuous variable
- Likelihood of rollover in collison - continuous variable
- Safety Star Rating - categorical variable
