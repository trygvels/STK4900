# Read data
blood <- read.table("http://www.uio.no/studier/emner/matnat/math/STK4900/v17/blood.txt",sep=",",header=TRUE)

# ---------------- Oppgave 2 a ----------------
# Divide into 3 levels
blood$alder = factor(blood$alder)
blood$alder		# produces levels 1, 2, 3

# Create box plot
boxplot(blodtr~alder, data=blood,main="Blood pressure in age groups", names=c("30-45 years","46-59 years","60-75 years"))

# ---------------- Oppgave 2 b ----------------
# One way ANOVA
aov.blood = aov(blodtr~alder, data=blood)
aov.blood
summary(aov.blood)

# ---------------- Oppgave 2 c ----------------
# Linear Regression model
linregrmod = lm(blodtr~alder)
options(contrasts=c("contr.treatment","contr.poly"))