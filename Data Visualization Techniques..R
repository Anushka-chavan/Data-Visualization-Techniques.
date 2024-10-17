### Plots

### Chernoff-Flurry Faces
library(aplpack)
plot(faces(data[1:20,]))
plot(faces(data[101:200,]))

### ggpairs()
install.packages("GGally")
install.packages("ggplot2")
library(GGally)
library(ggplot2)
Bank.notes = read.delim("D:/Msc Sem 2/R practicals/Datasets/Bank notes.txt")
data=Bank.notes
data1=data[1:100,] # Genuine notes
data2=data[101:200,] # Counterfit notes


#1.
ggcorr(data,label=T) 
ggpairs(data1)
ggpairs(data2)
ggpairs(data1,
        upper = list(continuous = "density"),
        lower = list(continuous = "points")) 
# density for density plot(contour plot).
# points for scatter plot.

#2.
ggpairs(data1[1:4],
        upper = list(continuous = "smooth"),
        lower = list(continuous = "points"))
# smooth for regression model.

#3.
install.packages("GGally")
library(GGally)
library(ggplot2)
install.packages("reshape")
library(reshape)
tips
data(tips,package="reshape")

ggpairs(tips[, c(1, 3, 4, 2)])
ggpairs(
  tips[, c(1, 3, 4, 2)],
  upper = list(continuous = "density"),
  lower = list(continuous = "points"))
ggpairs(
  tips[, c(1, 3, 4, 2)],
  upper = list(continuous = "density", combo = "box_no_facet"),
  lower = list(continuous = "points", combo = "dot_no_facet"))

#4.
data(flea)
ggpairs(flea, columns = 2:4, ggplot2::aes(colour=species), upper = list(continuous = "smooth"),
        lower = list(continuous = "points"))
ggpairs(flea, ggplot2::aes(colour=species))

### Boxplot

boxplot(data1$DIAGONAL,data2$DIAGONAL)
boxplot(data1$LENGTH,data2$LENGTH)
boxplot(data1$LEFTHEIGHT,data2$LEFTHEIGHT)
boxplot(data1$RIGHTHEIGHT,data2$RIGHTHEIGHT)
boxplot(data1$LOWERMARGIN,data2$LOWERMARGIN)
boxplot(data1$UPPERMARGIN,data2$UPPERMARGIN)

### Histogram

hist(data1$DIAGONAL,xlim=range(data1$DIAGONAL,data2$DIAGONAL))
hist(data2$DIAGONAL,add=T,col="blue")

hist(data2$LENGTH,xlim=range(data1$LENGTH,data2$LENGTH))
hist(data1$LENGTH,add=T,col="blue")

hist(data1$LEFTHEIGHT,xlim=range(data1$LEFTHEIGHT,data2$LEFTHEIGHT))
hist(data2$LEFTHEIGHT,add=T,col="blue")

hist(data1$RIGHTHEIGHT,xlim=range(data1$RIGHTHEIGHT,data2$RIGHTHEIGHT))
hist(data2$RIGHTHEIGHT,add=T,col="blue")

hist(data1$LOWERMARGIN,xlim=range(data1$LOWERMARGIN,data2$LOWERMARGIN))
hist(data2$LOWERMARGIN,add=T,col="blue")

hist(data1$UPPERMARGIN,xlim=range(data1$UPPERMARGIN,data2$UPPERMARGIN))
hist(data2$UPPERMARGIN,add=T,col="blue")

### Density Estimation

plot(density(data2$DIAGONAL),xlim=c(137,143),ylim=c(0,0.9))
lines(density(data1$DIAGONAL))

plot(density(data2$LENGTH),xlim=range(data1$LENGTH,data2$LENGTH))
lines(density(data1$LENGTH))

plot(density(data2$LEFTHEIGHT),xlim=range(data1$LEFTHEIGHT,data2$LEFTHEIGHT))
lines(density(data1$LEFTHEIGHT))

plot(density(data2$RIGHTHEIGHT),xlim=range(data1$RIGHTHEIGHT,data2$RIGHTHEIGHT))
lines(density(data1$RIGHTHEIGHT))

plot(density(data1$LOWERMARGIN),xlim=range(data1$LOWERMARGIN,data2$LOWERMARGIN))
lines(density(data2$LOWERMARGIN))

plot(density(data1$UPPERMARGIN),xlim=range(data1$UPPERMARGIN,data2$UPPERMARGIN))
lines(density(data2$UPPERMARGIN))

### Matrix Plot

plot(data)
plot(data1)
plot(data2)

### Contour Plots

library(MASS)
z = kde2d(data$LENGTH,data$DIAGONAL,n=25);z
contour(z)

### Scatterplot

install.packages("scatterplot3d")
library(scatterplot3d)
plot(data1$UPPERMARGIN ,data1$DIAGONAL)
plot(data2$UPPERMARGIN ,data2$DIAGONAL)
plot(data$UPPERMARGIN ,data$DIAGONAL)
scatterplot3d(data1$LOWERMARGIN,data1$UPPERMARGIN,data1$DIAGONAL)
scatterplot3d(data2$LOWERMARGIN,data2$UPPERMARGIN,data2$DIAGONAL)
scatterplot3d(data$LOWERMARGIN,data$UPPERMARGIN,data$DIAGONAL)

