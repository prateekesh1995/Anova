##Anova For Single Factor
##choose the dosage1 file because there no anova is applied in excel
mydata<-read.csv(choose.files())
View(mydata)
names(mydata)
mydata_aov<-aov(Alertness~Dosage,mydata)
summary(mydata_aov)
#post hoc test(it will give you the description of the differences of the variables and p-values)
TukeyHSD(mydata_aov)
#two way or multiple factor Anova
mydata1<-read.csv(choose.files())
View(mydata1)
str(mydata1)
names(mydata1)
#. means taking the all values
mydata1_aov<-aov(Petrol_Prices~.,mydata1)
summary(mydata1_aov)
#post hoc test
TukeyHSD(mydata1_aov)
