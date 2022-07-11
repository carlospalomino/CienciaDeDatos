library(lattice)
library(datasets)

#needs to print to show the grapichs
p <- xyplot(Ozone ~ Wind, data = airquality)
print(p)

 #convert month to a factor variable

 airquality <- transform(airquality, Month = factor(Month))
 p <- xyplot(Ozone ~ Wind|Month, data = airquality, layout = c(5, 1))
 print(p)

#always print the last one
#example create two groups
#creating random data for the example
set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each=50)
y <- x+f-f*x+rnorm(100,sd=0.5)
#Create a factor variable
f <- factor(f,labels = c("Group 1","Group 2"))
p <- xyplot(y ~ x | f,layout=c(2,1))
print(p)


## Custom panel function
##Showing a line in the median
p <- xyplot(y ~ x | f, panel = function(x, y, ...) {
 panel.xyplot(x, y, ...) ## First call the default panel function for 'xyplot'
 panel.abline(h = median(y), lty = 2) ## Add a horizontal line at the median
})
print(p)

## Custom panel function
##Showing the linear regression function
p <- xyplot(y ~ x | f, panel = function(x, y, ...) {
 panel.xyplot(x, y, ...) ## First call default panel function
 panel.lmline(x, y, col = 2) ## Overlay a simple linear regression line
})
print(p)

 