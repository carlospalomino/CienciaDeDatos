<<<<<<< HEAD
##Have total emissions from PM2.5 decreased in 
##the Baltimore City, 
##Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") 
##from 1999 to 2008? 
##Use the base plotting system to make a plot 
##answering this question.


library(datasets)
##leyendo valores
NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")

val<-NEI[(NEI$fips=="24510"),]
head(val)

png(filename="plot2.png", width=480, height = 480 )

boxplot(log10(Emissions)~year,val,xlab="Anio",ylab="Resumen") 
title("Baltimore PM.25 Emissions")
=======
##Have total emissions from PM2.5 decreased in 
##the Baltimore City, 
##Maryland (\color{red}{\verb|fips == "24510"|}fips == "24510") 
##from 1999 to 2008? 
##Use the base plotting system to make a plot 
##answering this question.


library(datasets)
##leyendo valores
NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")

val<-NEI[(NEI$fips=="24510"),]
head(val)

png(filename="plot2.png", width=480, height = 480 )

boxplot(log10(Emissions)~year,val,xlab="Anio",ylab="Resumen") 
title("Baltimore PM.25 Emissions")
>>>>>>> 13aa09f7a8c476b22486147220c9509d79c3ee60
dev.off()