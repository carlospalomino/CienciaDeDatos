## PREGUNTA 1
##Have total emissions from PM2.5 decreased in the United 
##States from 1999 to 2008? 
##Using the base plotting system, make a plot showing the total
## PM2.5 emission from 
##all sources for each of the years 1999, 2002, 2005, and 2008.
##Cargando librerias
library(datasets)
##leyendo valores
NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")

##Analizando datos
head(NEI)##leyendo 5 primeros
colnames(NEI)##leyendo los nombres de las columnas
str(NEI)##Leyendo estructura general de los datos

##Verificando el porcentanje de datos nulos a evaluar
mean(is.na(NEI$Emissions)) ## no hay datos nulos la data esta bien
summary(NEI)## Resumen del contenido de los datos

##Guardamos en un vector los nombres
names<-colnames(NEI)
##Guardamos en un matriz solo las columnas que necesitamos
data<-NEI[c(4,6)] 
##Guardando resumen de datos
resumen<-aggregate(data['Emissions'], by=data['year'], sum) 


boxplot(log10(Emissions)~year,NEI,xlab="Anio",ylab="Resumen")      
title("Emisiones por anio")
