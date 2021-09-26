library(dplyr)
mechacar_table <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors=F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_table))
---------------
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
---------------
t.test((suspension_table$PSI),mu=1500)
t.test((suspension_table$PSI), mu=1500, subset='Manufacturing_lot' == lot1)
t.test((suspension_table$PSI), mu=1500, subset='Manufacturing_lot' == lot2)
t.test((suspension_table$PSI), mu=1500, subset='Manufacturing_lot' == lot3)