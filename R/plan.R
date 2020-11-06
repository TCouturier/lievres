#' Write basic plan
#'
#' @return A drake plan
#' @export
#'
#' @importFrom drake drake_plan
#' @examples
write_plan <- function() {
  drake::drake_plan(
    # load data
    # SHP
    mailles             = dataSHP("mailles_2019"),
    maille_lots_crottes = dataSHP("resultat_maille_lots_crottes"),
    #maille_crotte_seule = dataSHP("resultat_maille_crotte_seule"),
    #prelevements        = dataSHP("loc_prelevements"),
    traces              = dataSHP("loc_traces"),
    # Raster
    alt               = dataRaster("alt_PNM_focal400.asc"),
    dist_eau          = dataRaster("distance_eau_PNM_focal400.asc"),
    dist_foret        = dataRaster("distance_foret_PNM_focal400.asc"),
    dist_ski          = dataRaster("distance_ski_PNM_focal400.asc"),
    dist_troncon_eau  = dataRaster("distance_troncon_eau_PNM.asc"),
    forets            = dataRaster("forets_PNM_focal400.asc"),
    landes            = dataRaster("landes_PNM_focal400.asc"),
    neige             = dataRaster("neige_PNM_focal400.asc"),
    pelouses_prairies = dataRaster("pelouses_prairies_PNM_focal400.asc"),
    pente             = dataRaster("pente_PNM_focal400.asc"),
    tpi               = dataRaster("tpi_PNM_focal400.asc"),
    # Faire la carte avec toute les coavriables
    #creer le mask (contour parc mercantour)
    maskzone = createMask("pnm_total"),
    Carte    = CarteTot(maskzone,pente,tpi,pelouses_prairies,landes,forets,dist_troncon_eau,dist_eau,dist_foret,dist_ski,neige,alt),
    # Figures
    # shp
    fig1              = plotSHP(mailles,             color="indianred4", title="mailles"),
    fig2              = plotSHP(maille_lots_crottes, color="indianred4", title="maille lots crottes"),
    #fig3              = plotSHP(maille_crotte_seule, color="indianred4", title="maille crottes seules"),
    #fig4              = plotSHP(prelevements,        color="indianred4", title="prelevements"),
    fig3              = plotSHP(traces,              color="indianred4", title="traces"),
    # Carte total Raster
    fig4 = PlotCarteTot(Carte),
    # Correlations entre les covariables et plot
    fig5 = PlotCor(CorCarteTot(Carte)$`pearson correlation coefficient`)

  )
}
