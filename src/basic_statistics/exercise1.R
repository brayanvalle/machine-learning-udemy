
setwd("E:/Courses/Machine Learning/[UDEMY] Curso completo de Machine Learning Data Science en Python/Codigo/machine-learning-udemy/")

install.packages(c("modeest" , "raster" , "moments"))

install.packages("modeest")

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("genefilter", version = "3.8")


library(modeest) #moda
library(raster) #quantiles , cv
library(moments) #asimetria, curtosos


data<- read.csv("./datasets/auto-mpg.csv"  , header = TRUE , stringsAsFactors = FALSE)

data$cylinders <- factor(data$cylinders , 
                         levels = c(3,4,5,6,8), 
                         labels = c("3cil" , "4cil" , "5cil" , "6cil" , "8cil"))
summary(data)
head(mtcars, 6)

### Medidas de centralización
x<- data$mpg

mean(x)
median(x)
mfv(x)
quantile(X)


#### Medidas de dirpersión

var(x)
sd(x)
cv(x)
