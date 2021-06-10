# Fagus sylvatica occurences through GBIF database 
# Citation GBIF.org (09 June 2021) GBIF Occurrence Download https://doi.org/10.15468/dl.g3tuf9

# first step download the data in which you are interest from the official web site www.gbif.org. In this case F.sylvatica for the polygone interested (Parco nazionale delle foreste casentinesi)
# POLYGON((11.60446 43.73033,12.31637 43.73033,12.31637 44.14803,11.60446 44.14803,11.60446 43.73033)) 

# http://127.0.0.1:15732/library/rgbif/html/occ_download_import.html
# install.packages('bit64')

require (rgbif)
require ("bit64")

setwd("D:/ultimi_downloads")

res <- occ_download_get(key="0298755-200613084148143", overwrite=TRUE)

# with "occ_download_import(res)" we import the dataset and just giving a name at the vector we will have the data frame

x <- occ_download_import(res)

# have a look at the data frame
x
head(x)
x$class
x$locality
x$decimalLatitude	
x$decimalLongitude
plot(x$decimalLatitude, x$decimalLongitude, col="red")

#x$elevation
#plot(x$elevation, x$locality)

x$year
hist(year)
