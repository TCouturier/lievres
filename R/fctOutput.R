## fct pour plot SHP
#' Plot SHP
#'
#' @return plot
#' @export
#' @import ggplot2
#'
plotSHP <- function(fileshp, title, color){
 ggplot(data = fileshp) +
     geom_sf(colour = color) +
     xlab("Longitude") + ylab("Latitude") + ggtitle(title)
}


## fct pour plot Raster
#' Plot SHP
#'
#' @return plot
#' @export
#'
plotRaster <- function(fileraster, title){
  sp::plot(raster::stack(fileraster),
                   xlab="Longitude",
                   ylab="Latitude",
                   main=title
  )
}

## fct pour Carte tot
#' Plot SHP
#'
#' @return cartetotal
#' @export
#'
CarteTot <- function(fileMask, filePente, fileTpi, filePelouse, fileLande, fileForet, fileTroncon, fileEau, fileDistForet, fileSki, fileNeige, file_alt){
  raster::stack(list(Pente             = raster::scale(raster::mask(filePente, fileMask)),
                     Tpi               = raster::scale(raster::mask(fileTpi, fileMask)),
                     Pelouses_prairies = raster::scale(raster::mask(filePelouse, fileMask)),
                     Landes            = raster::scale(raster::mask(fileLande, fileMask)),
                     Forets            = raster::scale(raster::mask(fileForet, fileMask)),
                     Dist_troncon_eau  = raster::scale(raster::mask(fileTroncon, fileMask)),
                     Dist_eau          = raster::scale(raster::mask(fileEau, fileMask)),
                     Dist_foret        = raster::scale(raster::mask(fileDistForet, fileMask)),
                     Dist_ski          = raster::scale(raster::mask(fileSki, fileMask)),
                     Neige             = raster::scale(raster::mask(fileNeige, fileMask)),
                     Altitude          = raster::scale(raster::mask(file_alt, fileMask))))
}

## fct pour Plot Carte tot
#' Plot SHP
#'
#' @return plot
#' @export
#'
PlotCarteTot <- function(CarteTot){
  sp::plot(CarteTot)
}

## fct pour trouver correlations
#' Plot SHP
#'
#' @return tableau correlations
#' @export
#'
CorCarteTot <- function(CarteTot){
  cor <- raster::layerStats(CarteTot,'pearson',na.rm=TRUE)
  return(cor)
}


## fct plot correlations
#' Plot correlation
#'
#' @return tableau correlations
#' @export
#'
PlotCor <- function(CorTable){
  corrplot::corrplot(CorTable, type="upper", order="hclust", tl.col="black", tl.srt=45)
}
