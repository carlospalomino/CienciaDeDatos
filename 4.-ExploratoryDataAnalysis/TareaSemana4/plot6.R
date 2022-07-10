library(ggplot2)
library(dplyr)
##leyendo valores
setwd("/Users/carlospalominovidal/Library/CloudStorage/OneDrive-UniversidadPeruanadeCiencias/ESTUDIOS/Especializacion DataScience/CodigoFuente/CienciaDeDatos/CienciaDeDatos/3.-ExploratoryDataAnalysis/TareaSemana4")

#NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
#SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

png(filename="plot6.png", width=480, height = 480 )

baltimore<-NEI[(NEI$fips=="24510" | NEI$fips=="06037" ),]

vehicles <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
vehiclesSCC <- SCC[vehicles,]$SCC
vehiclesNEI <- baltimore[baltimore$SCC %in% vehiclesSCC,]





x<-qplot(year,log10(Emissions),data=vehiclesNEI,color=fips,facets=fips~.,xlab="YEARS",ylab="EMISSIONS PM2.5",main = "BALTIMORE VS LA EVOLUTION")
print(x)

#motor<-SCC  %>% filter_all(any_vars(. %in% c("Motor")))
#baltimormotordata<-baltimore[baltimore$SCC %in% coal$SCC,]

#boxplot(log10(Emissions)~year,coaldata,xlab="Anio",ylab="Emissions")      
#title("Emisiones Coal Combustion related")

dev.off()