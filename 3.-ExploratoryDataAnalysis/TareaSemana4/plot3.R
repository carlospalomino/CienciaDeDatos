library(ggplot2)
##leyendo valores
NEI <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/summarySCC_PM25.rds")
SCC <- readRDS("./3.-ExploratoryDataAnalysis/TareaSemana4/Source_Classification_Code.rds")


##point, nonpoint, onroad, nonroad
baltimore<-NEI[(NEI$fips=="24510" ),]
datapoint<-NEI[(NEI$fips=="24510" & NEI$type=="POINT"),]
datanonpoint<-NEI[(NEI$fips=="24510" & NEI$type=="NONPOINT"),]
dataonroad<-NEI[(NEI$fips=="24510" & NEI$type=="ONROAD"),]
datanonroad<-NEI[(NEI$fips=="24510" & NEI$type=="NONROAD"),]
#head(val)
png(filename="plot3.png", width=480, height = 480 )

##boxplot(log10(Emissions)~year,val,xlab="Anio",ylab="Resumen") 
##title("Baltimore PM.25 Emissions")
##dev.off()

x<-qplot(year,log10(Emissions),data=baltimore,color=type,facets=type~.,xlab="YEARS",ylab="EMISSIONS PM2.5",main = "BALTIMORE EVOLUTION")
print(x)
dev.off()
 