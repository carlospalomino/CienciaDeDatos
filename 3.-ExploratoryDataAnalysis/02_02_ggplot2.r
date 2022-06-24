library(ggplot2)
str(mpg)
#Simple grapichs
p <- qplot(displ , hwy , data = mpg)
print(p)

#Adding color
p <- qplot(displ , hwy , data = mpg, color=drv)
print(p)


#Adding trend line
p <- qplot(displ , hwy , data = mpg,geom = c("point","smooth"))
print(p)

#Adding histogram just one variable
p <- qplot( hwy , data = mpg, fill=drv)
print(p)

##Facets or panels

p <- qplot(displ,hwy,data=mpg,facets=.~drv)	
print(p)

p<-qplot(hwy,data=mpg,facets=drv~.,binwidth=2)
print(p)
	

library(datasets)
data(airquality)
p<-qplot(Wind, Ozone, data = airquality, facets = . ~ factor(Month))
print(p)
	
airquality = transform(airquality, Month = factor(Month))
p<-qplot(Wind, Ozone, data = airquality, facets = . ~ Month)
print(p)

 p<-qplot(votes, rating, data = movies) + stats_smooth("loess")
 print(p)