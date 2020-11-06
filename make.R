#TO DO


# ----- clean workspace : permet de nettoyer l'environnement
rm(list = ls())

#lit dans le fichier description les packages necessaires et les charge
devtools::install_deps(upgrade="never")

# ----- install compendium package : installer le package, mettre a disposition toutes les fcts du dossier R
#devtools::install(build = FALSE) #met les fct dispo dans tout l'ordinateur,
#utile pour utilisateur qui veulent refaire notre compendium
devtools::load_all() #fct dispo dans notre projet de recherche


rmarkdown::render("RapportLievres.Rmd")
#rmarkdown::render("PresLievres.Rmd")


## Execute plan drake
drake::r_make()
## Visualize
drake::r_vis_drake_graph(targets_only = TRUE)
drake::r_vis_drake_graph()
