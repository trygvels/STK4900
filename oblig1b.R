library(contrast)  
# Read data
blood <- read.table("http://www.uio.no/studier/emner/matnat/math/STK4900/v17/blood.txt",sep=",",header=TRUE)

# ---------------- Oppgave 2 a ----------------
# Divide into 3 levels
#blood$alder = factor(blood$alder)
#blood$alder		# produces levels 1, 2, 3

# Create box plot
boxplot(blood$blodtr~blood$alder, data=blood,main="Blood pressure in age groups", names=c("30-45 years","46-59 years","60-75 years"))
summary(blood$alder)
# ---------------- Oppgave 2 b ----------------
# One way ANOVA
aov.blood = aov(blood$blodtr~blood$alder, data=blood)
aov.blood
summary(aov.blood)

# ---------------- Oppgave 2 c ----------------
# Regression model
options(contrasts=c("contr.treatment","contr.poly"))
lm.sum=lm(blood$blodtr~blood$alder, data=blood)
summary(lm.sum)

