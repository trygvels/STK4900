


# Read data
no2data <- read.table("http://www.uio.no/studier/emner/matnat/math/STK4900/v17/no2.txt",sep="\t",header=TRUE)
blood <- read.table("http://www.uio.no/studier/emner/matnat/math/STK4900/v17/blood.txt",sep=",",header=TRUE)

names(no2data)=c('no2','log.cars','temp','wind.speed','hour.of.day')
attach(no2data)

#What is t-value?
#What is F-value?
#What is R²?
#Is Pr(>|t|) Different to P value?
#What is (Intercept) in ANOVA?

> summary(blood)
     blodtr          alder  
 Min.   :104.0   Min.   :1  
 1st Qu.:117.5   1st Qu.:1  
 Median :136.0   Median :2  
 Mean   :138.8   Mean   :2  
 3rd Qu.:156.2   3rd Qu.:3  
 Max.   :214.0   Max.   :3  


> summary(no2data)
      no2           log.cars          temp            wind.speed   
 Min.   :1.224   Min.   :4.127   Min.   :-18.6000   Min.   :0.300  
 1st Qu.:3.214   1st Qu.:6.176   1st Qu.: -3.9000   1st Qu.:1.675  
 Median :3.848   Median :7.425   Median :  1.1000   Median :2.800  
 Mean   :3.698   Mean   :6.973   Mean   :  0.8474   Mean   :3.056  
 3rd Qu.:4.217   3rd Qu.:7.793   3rd Qu.:  4.9000   3rd Qu.:4.200  
 Max.   :6.395   Max.   :8.349   Max.   : 21.1000   Max.   :9.900  
  hour.of.day   
 Min.   : 1.00  
 1st Qu.: 6.00  
 Median :12.50  
 Mean   :12.38  
 3rd Qu.:18.00  
 Max.   :24.00  
