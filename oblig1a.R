

library(car)
# Read data
no2data <- read.table("http://www.uio.no/studier/emner/matnat/math/STK4900/v17/no2.txt",sep="\t",header=TRUE)

# Name variables
names(no2data)=c('no2','log.cars','temp','wind.speed','hour.of.day')
attach(no2data)

# ---------------- Oppgave 1 a ----------------
summary(no2data)
plot(log.cars,no2)

# ---------------- Oppgave 1 b ----------------
fit.both=lm(no2~log.cars, data=no2data)
summary(fit.both)
abline(fit.both,col=2)

# ---------------- Oppgave 1 c ----------------

# ---------------- Oppgave 1 d ----------------
# Log has no effect
fit.all=lm(no2~log.cars+temp+wind.speed+hour.of.day, data=no2data)
summary(fit.all)
crPlots(fit.all, terms=~.)

# If slightly nonlinear include extra term
# Better fit using second order terms
model = log.cars+I(log.cars^2)+temp+wind.speed+I(wind.speed^2)+hour.of.day
fit.all2=lm(no2~(log.cars+I(log.cars^2))+temp+(wind.speed+I(wind.speed^2))+hour.of.day)

# ---------------- Oppgave 1 e ----------------

# Check linearity

all2fit=fit.all2$fit
all2res= fit.all2$res
crPlots(fit.all2, terms=~.)

# Check normality
hist(all2res)
qqnorm(all2res); qqline(all2res)

# Check homoscedasticy
plot(all2fit, all2res, xlab="Fitted values", ylab="Residuals", main="Checking Homoscedasticy")


