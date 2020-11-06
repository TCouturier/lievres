## fct pour loader les donnees

#' Lire Shapefile
#'
#' @return shapefile
#' @export
#'
dataSHP <- function(nameSHP){
  sf::st_read(dsn = here::here("data") ,
              layer = nameSHP)
  #j'ecris mon chemin depuis ma racine projet avec here
}


#' Lire raster
#'
#' @return rasterlayer
#' @export
#'
dataRaster <- function(nameRaster){
  rstr <- raster::raster(here::here("data","rasters",nameRaster))
  raster::projection(rstr)<-sp::CRS("+init=epsg:2154")
  return(rstr)
}


#' Creation du mask
#'
#' @return mask
#' @export
#'
createMask <- function(nameFile){
  #Sproj="+proj=lcc +lat_1=49 +lat_2=44 +lat_0=46.5 +lon_0=3 +x_0=700000+y_0=6600000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs"
  Sproj="+init=epsg:2154"
  pnm <- rgdal::readOGR(dsn=here::here("data"), layer=nameFile)
  raster::projection(pnm)<-sp::CRS(Sproj)
  zone<-raster::raster(xmn=973484,xmx=1086216,ymn=6304725,ymx=6389112,res=100)
  raster::projection(zone)<-sp::CRS(Sproj) # systeme de projection du raster
  maskzone <- raster::rasterize(pnm, zone, background=NA)
  return(maskzone)
}


#' Lire raster final
#'
#' @return rasterlayer
#' @export
#'
dataRasterfinal <- function(nameRaster){
  rstr <- raster::raster(here::here("output", nameRaster))
  raster::projection(rstr)<-sp::CRS("+init=epsg:2154")
  return(rstr)
}
