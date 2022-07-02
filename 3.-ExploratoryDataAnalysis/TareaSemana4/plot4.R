<<<<<<< HEAD
library(ggplot2)
library(dplyr)
##leyendo valores
NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")


png(filename="plot4.png", width=480, height = 480 )


coal<-SCC  %>% filter_all(any_vars(. %in% c("Coal")))
coaldata<-NEI[NEI$SCC %in% coal$SCC,]

boxplot(log10(Emissions)~year,coaldata,xlab="Anio",ylab="Emissions")      
title("Emisiones Coal Combustion related")

=======
library(ggplot2)
library(dplyr)
##leyendo valores
NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")


png(filename="plot4.png", width=480, height = 480 )


coal<-SCC  %>% filter_all(any_vars(. %in% c("Coal")))
coaldata<-NEI[NEI$SCC %in% coal$SCC,]

boxplot(log10(Emissions)~year,coaldata,xlab="Anio",ylab="Emissions")      
title("Emisiones Coal Combustion related")

>>>>>>> 13aa09f7a8c476b22486147220c9509d79c3ee60
dev.off()